# ShellGPT
A shell module for trolling GPT without leaving the shell. 

## GPT Query in Terminal
This guide provides instructions for setting up a quick and interactive way to use GPT (Generative Pre-trained Transformer) models like GPT-3 or GPT-4 within your terminal using curl and jq.

## Prerequisites
- curl: Command-line tool for transferring data with URLs.
- jq: Lightweight and flexible command-line JSON processor.
- An OpenAI API Key: You'll need this to make requests to the GPT engine.
- Install curl and jq
- If you don't already have curl and jq, you can install them as follows:

## For macOS users:

brew install curl jq

## For Debian-based Linux distributions:
sudo apt update
sudo apt install curl jq

# Setup
Step 1: Obtain OpenAI API Key
Go to OpenAI's Developer Dashboard to sign up for an API key.

Step 2: Add Shell Function
Add the following Bash or Zsh function to your ~/.bashrc or ~/.zshrc file. This function will use curl to make a request to the OpenAI API and jq to parse the JSON response.

*** Select a function from the main branch ***

Note: Don't forget to replace your-openai-api-key-here with your actual OpenAI API key.

Step 3: Reload Shell Configuration
After adding the function, reload your shell configuration to make the function available.

source ~/.bashrc  # For Bash users
# or
source ~/.zshrc  # For Zsh users

Usage
Simply type gpt_query in your terminal and press Enter. The function will prompt you for input, make the API call, and display the GPT-generated text.

$ gpt_query
Enter your prompt: What is the capital of France?
GPT says: The capital of France is Paris.

You now have a quick and interactive way to use GPT models directly from your terminal. Feel free to modify and expand upon this basic example to better suit your specific needs.



