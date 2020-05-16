#!/usr/bin/env bash
# exit on error
set -o errexit

# Initial setup
mix deps.get --only prod
MIX_ENV=prod mix compile

# Compile assets
sudo npm install -g webpack
sudo npm install -g webpack-cli
cd ./assets
sudo npm install 
sudo npm run deploy 
cd ../
mix phx.digest

# Build the release and overwrite the existing release directory
MIX_ENV=prod mix release --overwrite