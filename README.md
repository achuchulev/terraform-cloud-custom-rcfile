# How to set .terraformrc in a custom location

## Prerequisites

- git
- terraform (>=0.11.13)
- terraform cloud subscription (paid or free)
- terraform token

## How to run

### Get the repo

```
git clone git@github.com:achuchulev/terraform-cloud-custom-rcfile.git
cd terraform-cloud-custom-rcfile
```

### Create a `.terraformrc` that contains following credential below in the desired location

```
credentials "app.terraform.io" {
  token = "your_terraform_api_token"
}
```


### Set `env vars` for `.terraformrc` file location

```
export TF_CLI_CONFIG_FILE=/path/to/.terraformrc
```

### Initialize terraform and apply

```
terraform init
terraform plan
terraform apply
```
