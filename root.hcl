remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket = "8732374nsddhg3223gg23dsds"

    key            = "tofu.tfstate"
    region         = "us-east-1"
    profile         = "default"
    shared_credentials_file = "/root/.aws/credentials"
    encrypt        = true
    dynamodb_table = "sdsn338787sdksbkdsdsnds"

  }
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region = "us-east-1"
  profile = "default"
}
EOF
}

