#! /bin/bash

set -e

echo "Cleaning everything up"
rm -rf node_modules
rm -rf packages/react-project/node_modules
rm -rf packages/react-native-project/node_modules

echo "Running yarn to install depdencies at the root"
yarn

echo "Clearing workspace node_modules"
rm -rf packages/react-project/node_modules
rm -rf packages/react-native-project/node_modules

echo "Entering a workspace"
cd packages/react-project

echo "Running yarn to install dependencies within a workspace"
yarn
