include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../modules/sqs_fifo"
}

inputs = {
  name                    = "fifoqueue2.fifo"
  create               = true
  delay_seconds               = 10
  tags = {
    owner = "roshan s"
    purpose = "terraform dynamic testing"
  }
  fifo_queue                  = true
  content_based_deduplication = true


}
