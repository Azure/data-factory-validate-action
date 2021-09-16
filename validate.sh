#!/bin/sh -l

dataFactoryDirectory=$1
dataFactoryResourceId=$2

cd $dataFactoryDirectory
ls -l

echo "Installing Azure Data Factory Utilities package..."
npm install
echo "Installation completed."

echo "Validating $dataFactoryResourceId at $(pwd)..."
npm run build validate $(pwd) $dataFactoryResourceId
echo "Validation completed."
