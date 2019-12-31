#!/usr/bin/env bash

echo "Printing keys:"
bundle exec pod keys

echo "Generating secrets files"
bundle exec pod keys generate SecretsCenter