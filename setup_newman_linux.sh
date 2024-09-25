#!/bin/bash

# Check if Newman is installed, install if not
if ! command -v newman &> /dev/null
then
    echo "Newman not found. Installing Newman..."
    sudo npm install -g newman newman-reporter-htmlextra
else
    echo "Newman is already installed."
    echo "Ensuring Newman HTML reporter is installed..."
    sudo npm install -g newman-reporter-htmlextra
fi

# Create a directory for the tests
echo "Creating a directory for the tests..."
mkdir -p ~/airbnb_api_tests
cd ~/airbnb_api_tests

# Prompt user to move test files
echo "Please move your airbnb_clone.postman_collection.json and airbnb_clone_env.json files to ~/airbnb_api_tests"
echo "Press enter when you've done this."
read

# Check if files exist
if [ -f "airbnb_clone.postman_collection.json" ] && [ -f "airbnb_clone_env.json" ]
then
    echo "Test files found. You're all set!"
    echo "To run the tests, use the following command:"
    echo "newman run airbnb_clone.postman_collection.json -e airbnb_clone_env.json -r cli,htmlextra"
else
    echo "Test files not found in ~/airbnb_api_tests. Please make sure to move them there."
fi