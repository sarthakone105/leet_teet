#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL 'TRUNCATE teams, games')

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do

if [[ $WINNER != "winner" ]]
then
  echo $WINNER
  # find winner team in teams table
  WINNER_TEAM_NAME=$($PSQL "SELECT teams FROM teams WHERE name='$WINNER'")

  # if  winner_team not  found
  if [ -z "$WINNER_TEAM_NAME" ]
  then
    
    
    # Insert in winner teams table
    INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    sleep 0.5
    
    
    # get new winner_team_id
    WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM name WHERE name='$WINNER'") 
fi

# opponent

if [[ $OPPONENT != "opponent" ]]
then
  echo $OPPONENT
  # find winner team in teams table
  OPPONENT_TEAM_NAME=$($PSQL "SELECT teams FROM teams WHERE name='$OPPONENT'")

  # if  winner_team not  found
  if [ -z "$OPPONENT_TEAM_NAME" ]
  then
    # Insert in winner teams table
    INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    sleep 0.5
    # get new team_id
  fi
    
fi
done
