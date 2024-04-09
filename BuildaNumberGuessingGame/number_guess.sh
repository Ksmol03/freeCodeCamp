#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=game -t --no-align -c"

echo Enter your username:
read USERNAME

# Welcome message
FIND_USERNAME=$($PSQL "SELECT * FROM games WHERE username='$USERNAME'")
if [[ -z $FIND_USERNAME ]]
then
  echo Welcome, $USERNAME! It looks like this is your first time here.
else 
  echo $($PSQL "SELECT COUNT(*), MIN(takes) FROM games WHERE username='$USERNAME'") | while IFS='|' read -r GAMES_NUMBER BEST_GAME
  do
    echo Welcome back, $USERNAME! You have played $GAMES_NUMBER games, and your best game took $BEST_GAME guesses.
  done
fi

# Guess the number
echo -e "\nGuess the secret number between 1 and 1000:"
RANDOM_NUMBER=$(($RANDOM % 1000 + 1))
TAKES=0;

GUESS_NUMBER() {
  read GUESS
  TAKES=$((TAKES + 1))
  if [[ ! "$GUESS" =~ ^[0-9]+$ ]]
  then
    echo That is not an integer, guess again:
    GUESS_NUMBER
  else
    if [[ $GUESS -gt $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      GUESS_NUMBER
    else
      if [[ $GUESS -lt $RANDOM_NUMBER ]]
      then 
        echo "It's higher than that, guess again:"
        GUESS_NUMBER
      else
        if [[ $GUESS -eq $RANDOM_NUMBER ]]
        then
          INSERT_GAME=$($PSQL "INSERT INTO games (takes, username) VALUES ($TAKES, '$USERNAME')")
          echo "You guessed it in $TAKES tries. The secret number was $RANDOM_NUMBER. Nice job!"
        fi
      fi
    fi
  fi
}

GUESS_NUMBER
