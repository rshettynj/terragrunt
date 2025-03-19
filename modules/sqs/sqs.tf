module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "4.2.1"

  name = var.sqs_name
  create = var.create_or_not
  delay_seconds = var.delay_seconds
  tags = {
     purpose = var.tag_purpose
     owner = var.tag_owner
  }
}

output "myqueue_arn" {
  value = module.sqs.queue_arn
}

output "myqueue_url" {
  value = module.sqs.queue_url
}
