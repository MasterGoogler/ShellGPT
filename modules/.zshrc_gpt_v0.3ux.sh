# Created by Chomp Oct 25 2023
# Simple but fun way to use GPT without exiting the CLI
#
# How to Install
# Pre-reqs MacOS:           brew install curl jq
# Pre-reqs Debian/Unix:     update, install curl jq
# 
# 1. Add this to the bottom of your Shell config file
# 2. Add your API Key from OpenAI Chat-GPT
# 3. simply type "ai" in your command line to ask GPT a question!
# Set the function name to be something short
# Set your OpenAI API key here

# This is the slick version, where you don't need to use "" for your prompt, 
# it is paramaterized "automatically", this gives a much better user experience
# but can give weird output

# ChatGPT3.5-turbo Shell Interface
# rename the function to anything you want to call it in the shell
OPENAI_API_KEY="your-openai-api-key-here"

ai() {
      prompt="$@"
  
  if [ -z "$OPENAI_API_KEY" ]; then
    echo "Please set your OpenAI API key in the OPENAI_API_KEY variable."
    return
  fi

    # Surround the prompt with double quotes for JSON formatting
    prompt="\"$prompt\""

    # Use jq to handle the JSON formatting for the payload
    # This is where you'll need to complete the jq command.
    local data=$(jq -nc --arg content "$prompt" '{model: "gpt-3.5-turbo", messages: [{"role": "user", "content": $content}], temperature: 0.7}')
    

    # Send the request to OpenAI's API
    local response=$(curl -s -X POST "https://api.openai.com/v1/chat/completions" \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $OPENAI_API_KEY" \
        -d "$data") 

    # Check if the response is in JSON format
    if echo "$response" | jq empty 2>/dev/null; then
        # Parse and print the response using jq
        echo "GPT says:" $(echo "$response" | jq -r '.choices[0].message.content')
    else
        # If not valid JSON, print the raw response
        echo "Received non-JSON response:" $response
    fi
}

