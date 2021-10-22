#!/bin/bash

# Set language to avoid problems with special characters in dates
LANG=en_us_8859_1

# Create first file
touch commits.txt

# Create 2 counters and get actual date
COMMIT_COUNTER=1
DAYS_REVERSE_COUNTER=365
ACTUAL_DATE=$(date)

until [  $DAYS_REVERSE_COUNTER -lt 1 ]; do

    # Show actual state of counters
    echo The COMMIT_COUNTER is $COMMIT_COUNTER
    echo The DAYS_REVERSE_COUNTER is $DAYS_REVERSE_COUNTER
    
    # Make random number of commits per day
    RANDOM_SAME_DAY_COMMITS_COUNTER=$(( ( RANDOM % 5 )  + 1 ))
    
    until [  $RANDOM_SAME_DAY_COMMITS_COUNTER -lt 1 ]; do
    
        # Add 1 line to the file
        echo commit $COMMIT_COUNTER $RANDOM_SAME_DAY_COMMITS_COUNTER >> commits.txt

        # Make the commit
        git add commits.txt
        git commit -m "Commit $COMMIT_COUNTER $RANDOM_SAME_DAY_COMMITS_COUNTER"

        # Change date of last commit
        TEMP_DATE=$(date --date="$ACTUAL_DATE - $DAYS_REVERSE_COUNTER day")
        echo $TEMP_DATE
        GIT_COMMITTER_DATE="$TEMP_DATE" git commit --amend --no-edit --date "$TEMP_DATE"
    
        # Update random counter
        let RANDOM_SAME_DAY_COMMITS_COUNTER-=1
    done 

    # Update counters
    let COMMIT_COUNTER=COMMIT_COUNTER+1
    let DAYS_REVERSE_COUNTER-=1
done 
