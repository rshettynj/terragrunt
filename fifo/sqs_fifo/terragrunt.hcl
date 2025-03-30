#include "root" {
#  path = find_in_parent_folders("root.hcl")
#}

terraform {
  source = ".../modules/sqs_fifo"
}

inputs = {
      name                    = "fifoqueue11.fifo"
  delay_seconds               = 11
}
