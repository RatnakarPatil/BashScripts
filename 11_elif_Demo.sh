# More advanced if-elif-else

read -p "Enter your percentage: " percentage

if [[ percentage -ge 80 ]]
then
        echo "you are passed with A Grade"
elif [[ percentage -ge 60 ]]
then
        echo "you are passed with B Grade"
else
        echo "you are passed with C Grade"
fi

