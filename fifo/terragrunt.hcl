include "root" {
  path = find_in_parent_folders("root.hcl")
}

include "fifo2" {
  path = "./sqs_fifo2/terragrunt.hcl"
}

include "fifo1" {
  path = "./sqs_fifo/terragrunt.hcl"
}


terraform {
  source = "../modules/sqs_fifo"
}

inputs = {
  create               = true
  tags = {
    owner = "roshan Kumar shetty"
    purpose = "terraform dynamic testing"
  }
  fifo_queue                  = true
  content_based_deduplication = true
}

