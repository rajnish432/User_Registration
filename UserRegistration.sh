#! /bin/bash

echo "Welcome to User Registration."
read -p "Enter the First Name: " firstName
read -p "Enter the Last Name: " lastName
namePattern="^[A-Z]{1}[a-z]{2,}$";

function validateUserDetails()
{
	userDetail=$1
	pattern=$2
	if [[ $userDetail =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

validateUserDetails $firstName $namePattern
validateUserDetails $lastName $namePattern
