#!/bin/bash

# List current branch and commit of each submodule
echo "Listing current branches and commits of all submodules..."
git submodule foreach 'echo $path : Branch - $(git rev-parse --abbrev-ref HEAD), Commit - $(git rev-parse HEAD)'

