#!/bin/sh -l

dataFactoryDirectory=$1
dataFactoryId=$2

cd $dataFactoryDirectory
ls -l

echo "Installing Azure Data Factory Utilities package..."
npm install
echo "Installation completed."

echo "Validating $dataFactoryId at $(pwd)"
npm run build validate $(pwd) $dataFactoryId
echo "Validation completed."
