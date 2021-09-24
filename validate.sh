#!/bin/sh -l

dataFactoryDir=$1
dataFactoryResourceId=$2

cd $dataFactoryDir
ls -l

echo "Validating $dataFactoryResourceId at $(pwd)..."
node node_modules/@microsoft/azure-data-factory-utilities/lib/index validate $(pwd) $dataFactoryResourceId
echo "Validation completed."
