include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../modules/s3"
}

inputs = {

  bucket_name = "roshanshetty-rshetty-test1"

  tag_owner   = "Roshan Shetty"
  tag_purpose = "Demo Only"
  tag_details = "TBD"
}
