# setup  aws profile
# create s3 bucket 

```hcl
terraform {
  backend "s3" {
    bucket = "my-state-file-backup-tf"
    key = "terraform.tfstate"
    region = "ap-southeast-1"
    profile = "tf-user"

  }
}
```
# run terraform init, it will now create state file in s3 bucket
