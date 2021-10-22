#!/bin/bash

# Set language to avoid problems with special characters in dates
LANG=en_us_8859_1

# Create default phone (in future versions will be more fonts, space and numbers still does not work)
A=(0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 0 1 1 1 1 1 1 0 0 1 1 1 1 1)
B=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0)
C=(0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0)
D=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0)
E=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 1)
F=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 0 0 0 0)
G=(0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 0 1 0 1 1 1 1 0 1 1 1 0 1 1 0 1 1 0)
H=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
I=(1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 1)
J=(0 0 0 0 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0)
K=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1)
L=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1)
M=(1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1)
N=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 0 0 0 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
O=(0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0)
P=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 0 0 0 1 1 1 1 0 0 0 0 1 1 0 0 0 0)
Q=(0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1)
R=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 1 0 0 1 1 1 1 1 1 1 0 1 1 1 0 1 1)
S=(0 1 1 1 0 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 0 1 0 1 1 1 0)
T=(1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0)
U=(1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0)
V=(1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0)
W=(1 1 1 1 1 0 0 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0)
X=(1 1 0 0 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 1)
Y=(1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 0 0 1 0 0 1 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0)
Z=(1 1 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 1 1 0 1 1 0 1 1 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 1 1)
A0=(0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0)
A1=(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
A2=(0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 0 1 1 0 1 1 0 0 1 1)
A3=(0 1 0 0 0 1 0 1 1 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0)
A4=(1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
A5=(0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 1 1 0 0 1 1 0)
A6=(0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 0 1 1 1 1 0 1 0 0 1 1 0)
A7=(1 1 0 0 0 0 0 1 1 0 0 0 0 0 1 0 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 0 0 0 0 0)
A8=(0 1 1 0 1 1 0 1 1 1 1 1 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0)
A9=(0 1 1 0 0 1 0 1 1 1 1 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0)
SPACE=(0 0 0 0 0 0 0 0 0 0 0 0 0 0)

# Create commits file
touch commits.txt

# Set initial values of variables
COMMIT_COUNTER=1
DAYS_REVERSE_COUNTER=372
DAYS_POST_COUNTER=$((${#WORD} * 7 * 7))
DAYS_TO_AVOID=$(($2 * 7))
DAYS_TO_PRINT=0
ACTUAL_DATE=$(date)
WORD=$1
ARRAY_LETTER=()
ARRAY_COUNTER=-1
LETTER_COUNTER=0

# Iterate over the days to paint
until [  $DAYS_REVERSE_COUNTER -lt 1 ] && [ $DAYS_POST_COUNTER -lt 1 ]; do
    
    # Set the ammount of commits per day without letter paint
    SAME_DAY_COMMITS_COUNTER=3
    
    # Set the ammount of commits per day with letter paint
    if [ $DAYS_TO_AVOID -eq 0 ] && [ $DAYS_TO_PRINT -gt 0 ] && [ $ARRAY_COUNTER -gt -1 ] && [ ${ARRAY_LETTER[$ARRAY_COUNTER]} -eq 1 ]
      then
        let SAME_DAY_COMMITS_COUNTER=15
      fi
    
    # Make commits per day
    until [ $SAME_DAY_COMMITS_COUNTER -lt 1 ]; do
    
        # Add 1 line to the file
        echo commit $COMMIT_COUNTER $SAME_DAY_COMMITS_COUNTER >> commits.txt

        # Make the commit
        git add commits.txt
        git commit -m "Commit $COMMIT_COUNTER $SAME_DAY_COMMITS_COUNTER"

        # Change date of last commit
        TEMP_DATE=$(date --date="$ACTUAL_DATE - $DAYS_REVERSE_COUNTER day")
        GIT_COMMITTER_DATE="$TEMP_DATE" git commit --amend --no-edit --date "$TEMP_DATE"
    
        # Update commit counter
        let SAME_DAY_COMMITS_COUNTER-=1
    done   
    
    # Update counters
    let COMMIT_COUNTER+=1
    let DAYS_REVERSE_COUNTER-=1

    # Update array counter
    if [ $ARRAY_COUNTER -gt -1 ] && [ $ARRAY_COUNTER -lt ${#ARRAY_LETTER[@]} ]
      then
        let ARRAY_COUNTER+=1
      else
        let ARRAY_COUNTER=-1
      fi
    
    # Update days to avoid
    if [ $DAYS_TO_AVOID -gt 0 ]
      then
        WEEK_NUM=$(date --date="$ACTUAL_DATE - $DAYS_REVERSE_COUNTER day" +%u)
        let DAYS_TO_AVOID-=1
        
        # Get the new letter
        if [ $DAYS_TO_AVOID -eq 0 ] && [ ${#WORD} -gt 0 ] && [ $WEEK_NUM -eq 7 ]
          then
            LETTER=${WORD:0:1}
            ARRAY_LETTER=$LETTER[@]
            ARRAY_LETTER=( ${!ARRAY_LETTER} )
            WORD="${WORD:1}"
            let ARRAY_COUNTER=0
            let DAYS_TO_PRINT=${#ARRAY_LETTER[@]}
            let DAYS_TO_PRINT+=1
          elif [ $DAYS_TO_AVOID -eq 0 ] && [ ${#WORD} -gt 0 ]
            then
              let DAYS_TO_AVOID+=1
          fi
      fi

    # Update days to print
    if [ $DAYS_TO_PRINT -gt 0 ]
      then
        let DAYS_TO_PRINT-=1
        
        if [ $DAYS_TO_PRINT -eq 0 ]
          then
            if [ ${#WORD} -gt 0 ]
              then
                let DAYS_TO_AVOID=7
              else
                let DAYS_TO_AVOID=100
              fi
          fi
      fi

done 
