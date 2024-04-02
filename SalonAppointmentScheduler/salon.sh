#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~ MY SALON ~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n"


BOOK_AN_APPOINTMENT() {

  # show callback info
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  # show formatted list of all services
  OUR_SERVICES=$($PSQL "SELECT service_id, name FROM services")
    echo "$OUR_SERVICES" | while read SERVICE_ID BAR SERVICE
    do
      echo "$SERVICE_ID) $SERVICE"
    done

    # select service
    read SERVICE_ID_SELECTED

    # not a number
    if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
    then
      BOOK_AN_APPOINTMENT "This is not a number."
    else
      SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
      # isn't any service with this ID
      if [[ -z $SERVICE_NAME ]]
      then
        BOOK_AN_APPOINTMENT "There is no such service."
      else
        echo -e "\nWhat's your phone number?"

        # get customer phone
        read CUSTOMER_PHONE

        CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

        # if customer isn't in database
        if [[ -z $CUSTOMER_ID ]]
        then
          echo -e "\nI don't have a record for that phone number, what's your name?"
          read CUSTOMER_NAME
          INSERT_CUSTOMER=$($PSQL "INSERT INTO customers (name, phone) VALUES ('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
          CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
        fi

        CUSTOMER_NAME_IN_DB=$($PSQL "SELECT name FROM customers WHERE customer_id=$CUSTOMER_ID")

        echo -e "\nWhat time would you like your$SERVICE_NAME,$CUSTOMER_NAME_IN_DB?"
        read SERVICE_TIME

        INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

        echo -e "\nI have put you down for a$SERVICE_NAME at $SERVICE_TIME,$CUSTOMER_NAME_IN_DB."
        
      fi
    fi
}

BOOK_AN_APPOINTMENT
