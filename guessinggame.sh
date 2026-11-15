
#!/bin/bash

# Function to count files in the current directory
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Store the correct number of files
correct_answer=$(count_files)

# Display welcome message
echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Read user's guess
read -p "Enter your guess: " guess

# Continue until the answer is correct
while true
do
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
    elif [ "$guess" -lt "$correct_answer" ]; then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$correct_answer" ]; then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! Your guess is correct!"
        break
    fi

    read -p "Try again: " guess
done
