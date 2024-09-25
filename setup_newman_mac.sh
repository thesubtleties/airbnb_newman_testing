#!/bin/bash

# Check if Homebrew is installed, install if not
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Make sure Homebrew is in the path
eval "$(/opt/homebrew/bin/brew shellenv)"

# Check if Node.js is installed, install if not
if ! command -v node &> /dev/null
then
    echo "Node.js not found. Installing Node.js..."
    brew install node
else
    echo "Node.js is already installed."
fi

# Install Newman and Newman HTML reporter globally
echo "Installing Newman and Newman HTML reporter..."
npm install -g newman newman-reporter-htmlextra

# Create a directory for the tests
echo "Creating a directory for the tests..."
mkdir -p ./airbnb_api_tests
cd ./airbnb_api_tests

# Prompt user to move test files
echo "Please move your airbnb_clone.postman_collection.json and airbnb_clone_env.json files to ./airbnb_api_tests"
echo "Press enter when you've done this."
read

# Check if files exist
if [ -f "airbnb_clone.postman_collection.json" ] && [ -f "airbnb_clone_env.json" ]
then
    echo "Test files found. You're all set!"
    echo "To run the tests, use the following command:"
    echo "newman run airbnb_clone.postman_collection.json -e airbnb_clone_env.json -r cli,htmlextra"
else
    echo "Test files not found in ./airbnb_api_tests. Please make sure to move them there."
fi