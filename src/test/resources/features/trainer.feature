Feature: Starting a new game
  As a User,
  I want to start a new game,
  In order to play Lingo

Scenario: A new game starts
  When I select "Start a new game"
  Then I should see the first letter of a 5 letter word in round 1

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

Feature: See feedback
  As a User,
  I want to see feedback on my wrong guesses,
  In order to have a better guess next time

Feature: Starting a new round
  As a User,
  I want to start a new round,
  In order to guess a new word

Feature: Receive the game state
  As a User,
  I want to receive the game state,
  In order to see my score and the details of the current round

