#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams");

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do

  if [[ $WINNER != 'winner' ]]
  then
    FIRST_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    if [[ -z $FIRST_TEAM_NAME ]]
    then
      INSERT_FIRST_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_FIRST_TEAM_NAME == "INSERT 0 1" ]]
      then
        echo Inserted team $WINNER
      fi
    fi
  fi

  if [[ $OPPONENT != 'opponent' ]]
  then
    SECOND_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    if [[ -z $SECOND_TEAM_NAME ]]
    then
      INSERT_SECOND_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_SECOND_TEAM_NAME == "INSERT 0 1" ]]
      then
        echo Inserted team $OPPONENT
      fi
    fi
  fi

  if [[ $YEAR != 'year' ]]
  then
    FIRST_TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")"
    SECOND_TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")"
    INSERT_GAME="$($PSQL "INSERT INTO games (year, round, winner_id, winner_goals, opponent_goals, opponent_id) VALUES ($YEAR, '$ROUND', '$FIRST_TEAM_ID', $WINNER_GOALS, $OPPONENT_GOALS, '$SECOND_TEAM_ID')")"
    if [[ $INSERT_GAME == "INSERT 0 1" ]]
    then
      echo Inserted $ROUND: $WINNER vs $OPPONENT
    fi
  fi
done
  
