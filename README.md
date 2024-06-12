# Azure Data Factory Validate Action

GitHub Action that validates all of the Azure Data Factory resources in your Git repository using the [Azure Data Factory utilities](https://www.npmjs.com/package/@microsoft/azure-data-factory-utilities) package.

## When to use

The action is particularly useful on Continuous Integration (CI) workflows, where a step can be added to check if all Data Factory resources (e.g. pipelines, activities, linked services, datasets, etc) in the target Git branch are valid before applying the changes during the Continuous Deployment (CD) phase.

## Getting Started

### Prerequisites

* Ensure your Data Factory is connected with a Git repository. For more info, see [Connect to a Git repository](https://docs.microsoft.com/en-us/azure/data-factory/source-control#connect-to-a-git-repository) and [Bicep & ARM Template formats](https://docs.microsoft.com/en-us/azure/templates/microsoft.datafactory/factories?tabs=bicep).

### Example Usage

```yml
steps:
  - name: Validate Data Factory resources
    uses: Azure/data-factory-validate-action@v1.1.6
    # with:
    #   path: ./mydir [optional]
    #   id: <data factory resource ID> [optional]
```

### Inputs

- `path` (optional): Directory that contains all Data Factory resources. Defaults to `./` directory.

- `id` (optional): Data Factory resource ID. Defaults to `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup/providers/Microsoft.DataFactory/factories/dataFactory`.

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
