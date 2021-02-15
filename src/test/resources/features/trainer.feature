Feature: Starting a new game
  As a User,
  I want to start a new game,
  In order to play Lingo

Scenario: Starting a new game
  When I start a new game
  Then The word to guess has "5" letters
  And I should see the first letter
  And My score is "0"


Feature: See the first letter
  As a User,
  I want to see the first letter of the word I have to guess,
  In order to have a better guess


Feature: See the length of the word
  As a User,
  I want to see the length of the word I have to guess,
  In order to have a better guess


Feature: Guessing a word
  As a User,
  I want to guess a word,
  In order to increase my score

Scenario Outline: Guessing a word
  Given I am playing a game
  And I am given a "<word>" to "<guess>"
  When I "<guess>" the "<word>" correctly
  Then I receive positive "<feedback>"
  And I can start a new round
  Examples:     | word | guess | feedback |     | appel | appel | CORRECT, CORRECT, CORRECT, CORRECT, CORRECT |     | appel | adres | CORRECT, ABSENT, ABSENT, CORRECT, ABSENT |
  # Failure path
  Given I am playing a game
  And I am given a "<word>" to "<guess>"
  And It is not my 5th (last) try
  When I have an incorrect or invalid "<guess>"
  Then I receive negative "<feedback>"
  And I can guess again
  But I cannot start a new round
  # Failure path
  Given I am playing a game
  And I am given a "<word>" to "<guess>"
  And It is my 5th (last) try
  When I have an incorrect or invalid "<guess>"
  Then I receive negative "<feedback>"
  And I cannot guess again
  And I cannot start a new round



Feature: See feedback
  As a User,
  I want to see feedback on my wrong guesses,
  In order to have a better guess next time


Feature: Starting a new round
  As a User,
  I want to start a new round,
  In order to guess a new word

Scenario Outline: Starting a new round
  Given I am playing a game
  And The round was won
  And The last word had "<previous length>" letters
  When I start a new round
  Then The word to guess has "<next length>" letters
  And I should see the first letter
  Examples:     | previous length | next length |     | 5               | 6           |     | 6               | 7           |     | 7               | 5           |
  # Failure path
  Given I am playing a game
  And The round was lost
  Then I cannot start a new round


Feature: Receive the game state
  As a User,
  I want to receive the game state,
  In order to see my score and the details of the current round