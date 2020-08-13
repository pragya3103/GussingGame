n=$(ls -1 | wc -l)  # numebr of files

function correct_guess {        
    if [[ $1 -lt $2 ]]          
    then
	echo "Too low!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Too high!"
    else
	echo ""
	echo "Congratualations! You guessed right!"
    fi
}

while [[ $n -ne $guess ]]    # while loop starts with do
do
    read -p "Guess number of  files are present  in the current directory? " guess
    # echo "You entered: $guess"
    echo $(correct_guess $guess $n)
    echo ""
done