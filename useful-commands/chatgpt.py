# pip3 install pyperclip requests

import os
import openai
import pyperclip

# Set OpenAI API key from environment variable
openai.api_key = os.getenv("OPENAI_API_KEY")

# Get text from clipboard
input_text = pyperclip.paste()


# Generate a list of messages
messages = [
  {"role": "system", "content": "You are a helpful assistant."},
  {"role": "user", "content": input_text},
]

# Call OpenAI API
response = openai.ChatCompletion.create(
  model="gpt-3.5-turbo",
  messages=messages,
)

# print(response)

message = response['choices'][0]['message']['content'] 

print(message)

pyperclip.copy(message)
