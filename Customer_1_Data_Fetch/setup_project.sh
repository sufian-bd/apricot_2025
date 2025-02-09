#!/bin/bash

# Define the project root
PROJECT_ROOT="Customer_1_Data_Fetch"

# Define the folder structure
DIRECTORIES=(
    "$PROJECT_ROOT/inventory"
    "$PROJECT_ROOT/group_vars"
    "$PROJECT_ROOT/roles/common/tasks"
)

# Define the files to be created
FILES=(
    "$PROJECT_ROOT/group_vars/all.yml"
    "$PROJECT_ROOT/roles/common/tasks/fetch_vlans.yml"
    "$PROJECT_ROOT/roles/common/tasks/fetch_devices.yml"
    "$PROJECT_ROOT/roles/common/tasks/fetch_ip_info.yml"
    "$PROJECT_ROOT/playbook.yml"
)

# Create directories
echo "Creating directories..."
for dir in "${DIRECTORIES[@]}"; do
    mkdir -p "$dir"
    echo "Created: $dir"
done

# Create empty files
echo "Creating files..."
for file in "${FILES[@]}"; do
    touch "$file"
    echo "Created: $file"
done

# Make the script executable
chmod +x setup_project.sh

echo "✅ Project structure created successfully!"

