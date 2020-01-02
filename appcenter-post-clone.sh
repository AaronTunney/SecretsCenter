#!/usr/bin/env bash
 
# Install Cocoapods-keys
echo "Installing gems"
bundle install

echo "Setting secrets"
cd $APPCENTER_SOURCE_DIRECTORY
bundle exec pod keys set "TestSecret" "$APITestSecret" SecretsCenter

echo "Installing pods"
bundle exec pod install

echo "Printing keys:"
bundle exec pod keys

echo "Generating secrets files"
bundle exec pod keys generate SecretsCenter