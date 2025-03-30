include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../modules/ec2"
}

inputs = {

  instance_type   = "t2.micro"
  ami             = "ami-0df8c184d5f6ae949" 
  tags = {
    Name = "mytest"
  }
  tag_name = "mytest"
  metadata_options  = {  
    http_put_response_hop_limit = 2
    http_tokens = "required"
  }
}
