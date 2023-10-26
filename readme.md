# ShellGPT
A shell module for trolling GPT without leaving the shell. 

[What can ShellGPT do for you?]([[https://github.com/MasterGoogler/ShellGPT/images/example_output.png](https://github.com/MasterGoogler/ShellGPT/images/example_output.png)]

(https://github.com/MasterGoogler/ShellGPT/blob/main/images/example_output.png)https://github.com/MasterGoogler/ShellGPT/blob/main/images/example_output.png)

#### GPT Query in Terminal
This guide provides instructions for setting up a quick and interactive way to use GPT in your terminal.

#### Prerequisites
- curl: Command-line tool for transferring data with URLs.
- jq: Lightweight and flexible command-line JSON processor.
- An OpenAI API Key: You'll need this to make requests to the GPT engine.
- Install curl and jq
- If you don't already have curl and jq, you can install them as follows:

###### For macOS users:
`brew install curl jq`

###### For Debian-based Linux distributions:
`sudo apt update`
`sudo apt install curl jq`

# Setup
- [** Obtain OpenAI API Key **](https://platform.openai.com/docs/api-reference)
- Add the following Bash or Zsh function to your ~/.bashrc or ~/.zshrc file.
- This function will use curl to make a request to the OpenAI API and jq to parse the JSON response.
- [** Select a function from the main branch **](https://github.com/MasterGoogler/ShellGPT)

**Note:** Don't forget to replace your-openai-api-key-here with your actual OpenAI API key.

4: Reload Shell Configuration
After adding the function, reload your shell configuration to make the function available.

# For Bash users
`source ~/.bashrc`

# For Zsh users
`source ~/.zshrc` 

#### Usage
- Simply type ai followed by your query, JSON output is supported but still a little bit buggy. 
- The function will prompt you for input, make the API call, and display the GPT-generated response.
- Call the function name anyting you want in your config file to suit your preferences

### Example:
$ ai What is the capital of France?
GPT says: The capital of France is Paris.

You now have a quick and interactive way to use GPT models directly from your terminal.
Feel free to modify and expand upon this basic example to better suit your specific needs.


