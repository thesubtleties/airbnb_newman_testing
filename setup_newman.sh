#!/bin/bash

# For Mac: Install Homebrew and Node.js if not present
if [[ "$OSTYPE" == "darwin"* ]]; then
    if ! command -v brew &> /dev/null; then
        echo "Homebrew not found. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    
    if ! command -v node &> /dev/null; then
        echo "Node.js not found. Installing Node.js..."
        brew install node
    fi
fi

# Install Newman and Newman HTML reporter globally
echo "Installing Newman and Newman HTML reporter..."
npm install -g newman newman-reporter-htmlextra

echo "Setup complete!"
echo "Running tests..."

# Change to the airbnb_api_tests directory and run the tests
cd airbnb_api_tests
newman run airbnb_clone.postman_collection.json -e airbnb_clone_env.json -r cli,htmlextra

# Change back to the original directory
cd ..

echo "Tests completed. Check the console output above for results."
echo "An HTML report has been generated in the airbnb_api_tests directory."