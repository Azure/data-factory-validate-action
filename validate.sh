#!/bin/sh -l

dataFactoryDir=$1
dataFactoryResourceId=$2

cd $dataFactoryDir
ls -l

echo "Installing Azure Data Factory Utilities package..."\
npm install @microsoft/azure-data-factory-utilities
echo "Installation completed."

echo "Validating $dataFactoryResourceId at $(pwd)..."
node node_modules/@microsoft/azure-data-factory-utilities/lib/index validate $(pwd) $dataFactoryResourceId
echo "Validation completed."
