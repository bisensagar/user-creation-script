#!/bin/bash

# Function to create a new user
create_user() {
    username=$1
    password=$2

    # Create the user with the specified username
    sudo useradd -m $username

    # Set the user's password
    echo "$username:$password" | chpasswd

    echo "User '$username' has been created with the password '$password'"
}

# Create below users
create_user username1 <//password-here//>
create_user username2 <//password-here//>
create_user username3 <//password-here//>
mkdir /app && chown -R nexus:nexus /app && chmod -R 755 /app


#// Please note above script is tested and works fine, more to come soon....//
