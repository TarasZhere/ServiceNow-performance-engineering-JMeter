#!/bin/bash
echo "Starting process..."
brew update --auto-update
brew install jmeter
echo "JMeter installed. Running the test. This will take 15 minutes (900 seconds). Wait..."
jmeter -n -t ./ServiceNow.jmx -l ./ServiceNow.csv -e -o ./report/