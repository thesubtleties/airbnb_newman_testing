# AirBnB Clone API Tests

This repository contains API tests for the AirBnB Clone project using Newman, a command-line collection runner for Postman.

## Prerequisites

- Mac or Linux operating system
- For Mac: Homebrew and Node.js will be installed if not present
- For Linux: Node.js and npm should be pre-installed

## Setup and Running Tests

1. Clone this repository or download the test files.
2. Open Terminal and navigate to the directory containing the setup script.
3. Run the appropriate setup script for your operating system:

   For Mac:
   ./setup_newman_mac.sh

   For Linux:
   ./setup_newman_linux.sh

4. If you encounter a "permission denied" error, make the script executable first:

   chmod +x setup_newman_mac.sh # For Mac
   chmod +x setup_newman_linux.sh # For Linux

5. The script will install necessary dependencies and automatically run the tests.

## Test Reports

After running the tests, you'll find an HTML report in the `airbnb_api_tests` directory. This report provides a detailed overview of the test results, including any failures or errors encountered during the test run.

## Troubleshooting

If you encounter any issues while running the tests, please check the following:

1. Ensure you have the necessary permissions to install global npm packages.
2. Make sure your API server is running and accessible.
3. Verify that your `airbnb_clone.postman_collection.json` and `airbnb_clone_env.json` files are in the `airbnb_api_tests` directory.

If problems persist, please open an issue in this repository with details about the error you're encountering.

## Contributing

If you'd like to contribute to these tests, please fork the repository and create a pull request with your proposed changes.

## License

[MIT License](LICENSE)
