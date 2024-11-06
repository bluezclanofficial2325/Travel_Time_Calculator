#!/bin/bash

# Speed & Distance Calculator with Zenity GUI

# Display a welcome message
zenity --info --text="Welcome to the Speed & Distance Calculator! This tool will help you calculate the travel time based on your speed and distance."

# Prompt the user to enter the distance in kilometers using Zenity
distance=$(zenity --entry --title="Distance Input" --text="Enter the distance to travel (in kilometers):")
if [[ -z "$distance" || ! $distance =~ ^[0-9]+$ ]]; then
    zenity --error --text="Please enter a valid positive number for the distance."
    exit 1
fi

# Prompt the user to enter the speed in kilometers per hour using Zenity
speed=$(zenity --entry --title="Speed Input" --text="Enter your speed (in km/h):")
if [[ -z "$speed" || ! $speed =~ ^[0-9]+$ ]]; then
    zenity --error --text="Please enter a valid positive number for the speed."
    exit 1
fi

# Calculate the travel time in seconds
total_seconds=$(( (distance * 3600) / speed ))

# Calculate hours, minutes, and seconds
hours=$((total_seconds / 3600))
minutes=$(( (total_seconds % 3600) / 60 ))
seconds=$((total_seconds % 60))

# Display the result using Zenity
zenity --info --text="At a speed of $speed km/h, it will take you approximately $hours hour(s), $minutes minute(s), and $seconds second(s) to cover $distance kilometers."

# End of script
