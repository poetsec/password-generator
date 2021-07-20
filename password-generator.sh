#!/bin/bash

PURPLE='\033[0;35m'
GREEN='\033[0;32m'
NC='\033[0m' # no color

echo -e "${PURPLE}###########################################"
echo -e "####     Random Password Generator     ####"
echo -e "###########################################"
echo -e "####             @poetsec              ####"
echo -e "###########################################${NC}"

echo -e "${GREEN}Welcome to the password generator.${NC}"
echo "How many characters would you like your new password to have?"
read pass_length

echo "Here are five random passwords:"
echo ""
for p in $(seq 1 5);
    do
        openssl rand -base64 48 | cut -c1-$pass_length

echo ""

done
