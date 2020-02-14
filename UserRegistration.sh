#! /bin/bash

echo "Welcome to User Registration."
read -p "Enter the First Name: " firstName
read -p "Enter the Last Name: " lastName
read -p "Enter User Email-ID: " userEmail
read -p "Enter the Mobile Number: " mobileNumber
namePattern="^[A-Z]{1}[a-z]{2,}$";
emailPattern="^[a-zA-Z0-9]{3,}([+|_|-|.]?[a-zA-Z0-9])?[@]{1}[.]{0}[a-zA-Z0-9]{1,}[.]{1}[a-zA-Z]{2,3}[.]?{1}[a-zA-Z]?{2,3}$"
mobileNumberPattern="^[0-9]{1,3}[[:space:]][0-9]{10}$";

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
validateUserDetails $userEmail $emailPattern
validateUserDetails "$mobileNumber" $mobileNumberPattern
