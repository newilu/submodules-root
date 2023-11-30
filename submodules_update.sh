#!/bin/bash

echo "Checking submodules..."

# Iterate through each submodule
git submodule foreach 'echo $path `git rev-parse HEAD`'

# Ask if user wants to update submodules
read -p "Do you want to update all submodules to the latest commit of their respective branches? (y/n) " answer

if [ "$answer" != "${answer#[Yy]}" ]; then
    echo "Updating submodules..."
    git submodule update --remote --merge
    echo "Submodules updated."
else
    echo "Submodules update skipped."
fi
