#!/bin/bash

echo -e "\n# keys for encrypt/decrypt .keystore file" >> ~/.bashrc
echo "Creating PSWD_1_LEVEL:"
PSWD_1_LEVEL=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)
echo "export PSWD_1_LEVEL=$PSWD_1_LEVEL" >> ~/.bashrc
sleep 1
echo "Creating PSWD_2_LEVEL:"
PSWD_2_LEVEL=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)
echo "export PSWD_2_LEVEL=$PSWD_2_LEVEL" >> ~/.bashrc
sleep 1
echo "Creating PSWD_3_LEVEL:"
PSWD_3_LEVEL=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)
echo "export PSWD_3_LEVEL=$PSWD_3_LEVEL" >> ~/.bashrc
sleep 1
echo "Creating PSWD_4_LEVEL:"
PSWD_4_LEVEL=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)
echo "export PSWD_4_LEVEL=$PSWD_4_LEVEL" >> ~/.bashrc
sleep 1
echo "Creating PSWD_5_LEVEL:"
PSWD_5_LEVEL=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)
echo "export PSWD_5_LEVEL=$PSWD_5_LEVEL" >> ~/.bashrc