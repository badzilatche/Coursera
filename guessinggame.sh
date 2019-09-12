#!bin/bash

echo "Let's play a game"
correct_number=$(ls -1 | wc -l);
function question {
echo "Can you tell me how many files are in your current directory?"
}

question

read response

if [[ $response -eq $correct_number ]]; then
  echo "You said: $response"
  echo "Bingo! You answered correctly"
  exit
fi

while [[ $response -ne $correct_number ]]; do
  if [[ $response -gt $correct_number ]]; then
    echo "You said: $response"
    echo "You entered: $response, not I was looking for. The number is too high"
    question
    read response
  else
    echo "You said: $response"
    echo "You entered: $response, not I was looking for. The number is too low"
    question
    read response
  fi

  if [[ $response -eq $correct_number ]]; then
    echo "You said: $response"
    echo "Bingo! You answered correctly"
  fi
done
