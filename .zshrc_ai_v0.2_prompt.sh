# Created by Chomp Oct 2023
# 
# Simple but fun way to use GPT without exiting the CLI
#
# How to Install -> Readme.md on the Github
# Pre-reqs MacOS:           brew install curl jq
# Pre-reqs Debian/Unix:     update, install curl jq
# 
# 1. Add this to the bottom of your Shell config file
# 2. Add your API Key from OpenAI Chat-GPT
# 3. simply type "ai" in your command line to ask GPT a question!

# "Prompt version"
# This version lets the user type "ai" and then a prompt is returned for input
# to be sent to ChatGPT-3.5-turbo

# Chat GPT Shell Interface

API_KEY="your-openai-api-key-here"

ai() {
  echo "Enter your prompt:"
  read user_prompt
  
  response=$(curl -s https://api.openai.com/v1/chat/completions \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $API_KEY" \
    -d '{
        "model": "gpt-3.5-turbo",
        "messages": [{"role": "user", "content": "'"${user_prompt}"'"}],
        "temperature": 0.7
     }'
  )
  
  gpt_response=$(echo $response | jq -r '.choices[0].message.content')
  
  echo "GPT says: $gpt_response"
}