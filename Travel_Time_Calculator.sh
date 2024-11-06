#!/bin/bash

# Welcome to the Speed & Distance Calculator!
# This script calculates how much time it will take for a car to travel a specific distance
# at a chosen speed.

# Prompt the user to enter the distance in kilometers
echo "Let's calculate your travel time!"
read -p "Enter the distance to travel (in kilometers): " distance

# Validate that the distance is a positive number
if [[ ! $distance =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number for the distance."
    exit 1
fi

# Prompt the user to enter the speed in kilometers per hour
read -p "Enter your speed (in km/h): " speed

# Validate that the speed is a positive number
if [[ ! $speed =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number for the speed."
    exit 1
fi

# Calculate the travel time in seconds
total_seconds=$(( (distance * 3600) / speed ))

# Calculate hours, minutes, and seconds
hours=$((total_seconds / 3600))
minutes=$(( (total_seconds % 3600) / 60 ))
seconds=$((total_seconds % 60))

# Display the result to the user
echo "At a speed of $speed km/h, it will take you about $hours hour(s), $minutes minute(s), and $seconds second(s) to cover $distance kilometers."

# End of script

