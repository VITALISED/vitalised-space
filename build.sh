#!/usr/bin/env bash
# exit on error
set -o errexit

# Initial setup
mix deps.get --only prod
MIX_ENV=prod mix compile

# Compile assets
cd ./assets
npm install 
npm run deploy 
cd ../
mix phx.digest

# Build the release and overwrite the existing release directory
MIX_ENV=prod mix release --overwrite