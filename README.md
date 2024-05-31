# GCP Project

![Google Cloud](https://img.shields.io/badge/GoogleCloud-%234285F4.svg?style=for-the-badge&logo=google-cloud&logoColor=white) ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)


<img width="350" alt="Terraform Logo" src="https://upload.wikimedia.org/wikipedia/commons/5/51/Google_Cloud_logo.svg"> <img src="https://www.freepnglogos.com/uploads/plus-icon/plus-icon-plus-svg-png-icon-download-1.png" width="30" > <img width="350" alt="Terraform Logo" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Terraform_Logo.svg/512px-Terraform_Logo.svg.png">


## Description

This is a minimal terraform module for implementing an instance of a Google Cloud Project. It can either be used as a standalone module or within a bigger project using terragrunt, example:

*terragrunt.hcl*
```hcl
source = "git@github.com:ranson21/tf-gcp-project"

inputs = {
  ...
}
```

In order to use this within your project, you first need to ensure the credentials being used (usually ADC) has a quota set:

```bash
gcloud auth application-default set-quota-project abby-ranson
```

## Inputs

All inputs and descriptions can be located in the [Variables](./variables.tf) file

## Outputs

All outputs and descriptions can be located in the [Outputs](./outputs.tf) file

## License

[MIT](./LICENSE)
