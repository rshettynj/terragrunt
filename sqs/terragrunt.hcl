include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../modules/sqs"
}

inputs = {
  sqs_name = "rshetty-roshan-sqs1"
  create_or_not = true
  delay_seconds = 10
  tag_purpose = "testing"
  tag_owner = "Sonal Laharia"
}
