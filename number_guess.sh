#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

$PSQL "CREATE TABLE IF NOT EXISTS users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(22) UNIQUE,
  games_played INT DEFAULT 0,
  best_game INT DEFAULT 0
);" &>/dev/null

echo -e "\nEnter your username:"
read username

if [ "$username" != "" ];then
  user=$($PSQL "SELECT * FROM users WHERE username = '$username'")

  if [ "$user" == "" ]
  then
    echo -e "\nWelcome, $username! It looks like this is your first time here." 
    $PSQL "INSERT INTO users (username) VALUES ('$username')" &>/dev/null
    user=$($PSQL "SELECT * FROM users WHERE username = '$username'")
  else
    IFS='|' read -ra ROW <<< "$user"
    echo -e "\nWelcome back, $username! You have played ${ROW[2]} games, and your best game took ${ROW[3]} guesses."
  fi

  IFS='|' read -ra ROW <<< "$user"
  games_played=${ROW[2]}
  best_game=${ROW[2]}
  number_of_guess_now=0
  guess=0
  secret=$(($RANDOM%(1000-1+1)+1))

  echo -e "\nHint: $secret"
  
  while ! [[ $guess == $secret ]]
  do
    re='^[0-9]+$'
    if ! [[ $guess =~ $re ]] 
    then
      echo -e "\nThat is not an integer, guess again:"
      read guess
    else
      if [ $number_of_guess_now == 0 ]
      then
        echo -e "\nGuess the secret number between 1 and 1000:"
        read guess
      else
        if [ $guess -gt $secret ]
        then
          echo -e "\nIt's lower than that, guess again:"
        else
          echo -e "\nIt's higher than that, guess again:"
        fi
        read guess
      fi
    fi
    number_of_guess_now=$((number_of_guess_now+1))
  done
  
  echo -e "\nYou guessed it in $number_of_guess_now tries. The secret number was $secret. Nice job!"
  
  if [ $number_of_guess_now -lt $best_game ]
  then
    best_game=$number_of_guess_now
  elif [ $best_game == 0 ]
  then
    best_game=$number_of_guess_now
  else
    best_game=$best_game
  fi
  games_played=$((games_played+1))

  $PSQL "UPDATE users SET games_played = $games_played, best_game = $best_game WHERE username = '$username'" &>/dev/null
fi
