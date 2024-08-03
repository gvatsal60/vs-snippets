#!/bin/sh

##########################################################################################
# File: pre-commit-install.sh
# Author: Vatsal Gupta
# Date: 04-Aug-2024
# Description:
# This script sets up and runs pre-commit hooks.
# It checks for the presence of the .pre-commit-config.yaml file,
# ensures that Python, pip, and pre-commit are installed,
# installs pre-commit if necessary, and then runs pre-commit hooks.
#
# Usage:
# 1. Save the script to a file (e.g., pre-commit-install.sh).
# 2. Make it executable: chmod +x pre-commit-install.sh
# 3. Run the script: ./pre-commit-install.sh
#
# Requirements:
# - Python
# - pip

##########################################################################################

##########################################################################################
# License
##########################################################################################
# This script is licensed under the Apache 2.0 License.
# License information should be updated as necessary.

##########################################################################################
# Constants
##########################################################################################

# Path to the pre-commit file
PRE_COMMIT_FILE=".pre-commit-config.yaml"

##########################################################################################
# Functions
##########################################################################################

##########################################################################################
# Main Script
##########################################################################################

# Function to check if a command is available
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to check if pre-commit is installed
check_pre_commit_installed() {
    command_exists pre-commit
}

# Function to check if python is installed
check_python_installed() {
    command_exists python || command_exists python3
}

# Function to check if pip is installed
check_pip_installed() {
    command_exists pip || command_exists pip3
}

# Function to install pre-commit
install_pre_commit() {
    echo "pre-commit is not installed. Installing it now..."
    if command_exists pip; then
        pip install pre-commit
    elif command_exists pip3; then
        pip3 install pre-commit
    else
        echo "Error: pip is not installed. Please install pip to proceed."
        exit 1
    fi
}

# Function to run pre-commit
run_pre_commit() {
    echo "Running pre-commit..."
    pre-commit run --all-files
}

# Main script logic
if [ -f "${PRE_COMMIT_FILE}" ]; then
    echo "${PRE_COMMIT_FILE} file found."

    if ! check_python_installed; then
        echo "Error: Python is not installed. Please install Python to proceed."
        exit 1
    fi

    if ! check_pip_installed; then
        echo "Error: pip is not installed. Please install pip to proceed."
        exit 1
    fi

    if ! check_pre_commit_installed; then
        install_pre_commit
    fi

    run_pre_commit
else
    echo "$PRE_COMMIT_FILE file not found. Skipping pre-commit check."
fi
