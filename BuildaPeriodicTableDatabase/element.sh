#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# Check if argument is passed
if [[ $1 ]]
then

  # Check the type of argument
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    # Argument is a number
    RESULT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING (atomic_number) WHERE atomic_number=$1")
  else
    # Argument is a text
    RESULT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING (atomic_number) WHERE symbol='$1' OR name='$1'")
  fi

  # Check if element exists
  if [[ -z $RESULT ]]
  then 
    echo I could not find that element in the database.
  else
    # Print the info
    echo "$RESULT" | while IFS='|' read -r ATOMIC_NUMBER SYMBOL NAME ATOMIC_MASS MELTING_POINT BOILING_POINT TYPE_ID
    do
      TYPE=$($PSQL "SELECT type FROM types WHERE type_id=$TYPE_ID")
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
    done
  fi

else
  echo Please provide an element as an argument.
fi
