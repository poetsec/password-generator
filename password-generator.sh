#!/bin/bash
echo "Welcome to the password generator."
echo "How many characters would you like your new password to have?"
read pass_length

echo "Here are five random passwords:"
echo ""
for p in $(seq 1 5);
    do
        openssl rand -base64 48 | cut -c1-$pass_length

echo ""

done