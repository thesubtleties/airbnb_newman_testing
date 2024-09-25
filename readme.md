# AirBnB Clone API Tests

This repository contains API tests for the AirBnB Clone project using Newman, a command-line collection runner for Postman.

## Prerequisites

- Mac or Linux operating system
- For Mac: Homebrew will be installed if not present
- For Linux: Node.js and npm should be pre-installed

## Setup Instructions

### For Mac Users:

1. Open Terminal
2. Navigate to the directory containing the setup script
3. Run the following command:

   ./setup_newman.sh

4. If you encounter a "permission denied" error, make the script executable first:

   chmod +x setup_newman.sh
   ./setup_newman.sh

5. Follow the prompts in the script

### For Linux Users:

1. Open Terminal
2. Navigate to the directory containing the setup script
3. Run the following command:

   ./setup_newman_linux.sh

4. If you encounter a "permission denied" error, make the script executable first:

   chmod +x setup_newman_linux.sh
   ./setup_newman_linux.sh

5. Follow the prompts in the script

## Running the Tests

After the setup is complete, you can run the tests using the following command:

newman run airbnb_clone.postman_collection.json -e airbnb_clone_env.json -r cli,htmlextra

This command will:

- Run the Postman collection specified in `airbnb_clone.postman_collection.json`
- Use the environment variables specified in `airbnb_clone_env.json`
- Output the results to the console (cli) and generate an HTML report (htmlextra)

## Test Reports

After running the tests, you'll find an HTML report in the same directory. This report provides a detailed overview of the test results, including any failures or errors encountered during the test run.

## Troubleshooting

If you encounter any issues during setup or while running the tests, please check the following:

1. Ensure you have the necessary permissions to install global npm packages
2. Verify that your `airbnb_clone.postman_collection.json` and `airbnb_clone_env.json` files are in the correct directory (./airbnb_api_tests)
3. Make sure your API server is running and accessible

If problems persist, please open an issue in this repository with details about the error you're encountering.

## Contributing

If you'd like to contribute to these tests, please fork the repository and create a pull request with your proposed changes.

## License

[MIT License](LICENSE)
