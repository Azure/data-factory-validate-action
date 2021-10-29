#!/bin/sh -l

dataFactoryDir=$1
dataFactoryResourceId=$2

cd $dataFactoryDir
ls -l

echo "Installing Azure Data Factory Utilities package..."
npm install @microsoft/azure-data-factory-utilities
echo "Installation completed."

echo "Validating $dataFactoryResourceId at $(pwd)..."
node ./node_modules/@microsoft/azure-data-factory-utilities/lib/index validate $(pwd) $dataFactoryResourceId
status=$?

if [ $status -eq 0 ]
then
  echo "Validation completed."
  exit 0
else
  echo "Validation completed with errors." >&2
  exit 1
fi
