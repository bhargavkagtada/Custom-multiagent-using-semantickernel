#!/bin/bash

echo "Setting up Python virtual environment..."

# Create a virtual environment in the workspace root
python3 -m venv .venv

# Activate the virtual environment
source .venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Set up the backend environment
echo "Setting up backend environment..."
cd ./src/backend

# Install dependencies from requirements.txt
echo "Installing backend dependencies..."
pip install -r requirements.txt

# Set up the frontend environment  
echo "Setting up frontend environment..."
cd ../frontend

# Install dependencies from requirements.txt
echo "Installing frontend dependencies..."
pip install -r requirements.txt

cd ../..

echo "Setup complete! Virtual environment is at $(pwd)/.venv"
echo "To activate the environment, run: source .venv/bin/activate"


