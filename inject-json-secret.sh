#!/usr/bin/env bash

while getopts f:k: option
do
case "${option}"
in
f) FILENAME=${OPTARG};;
k) KEY=${OPTARG};;
esac
done

# Override use of default Mac ruby environment
export PATH=~/.rbenv/shims:$PATH
export LANG=en_US.UTF-8

# Get secret from Cocoapods-Keys
cd ${SRCROOT}
SECRET=$(bundle exec pod keys get $KEY ${PROJECT_NAME})
echo $SECRET

# Inject secret
mv ${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app/$FILENAME temp.json
jq -r ".secret |= \"${SECRET}\"" temp.json > ${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app/$FILENAME
rm temp.json