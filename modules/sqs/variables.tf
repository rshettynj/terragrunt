variable sqs_name {
   type = string
   default = "xxx"
   description = "Enter the SQS name to be created"
   validation {
     condition = !strcontains(var.sqs_name, ".fifo")
     error_message = "Normal SQS queue name must not end with .fifo"
   }
 
}
variable create_or_not {
   type = string
   default = "xxx"
   description = "Create the SQS or not."
}
variable delay_seconds {
   type = number
   default = 10
   description = "SQS message ingeation delay in seconds"
}
variable tag_purpose {
   type = string
   default = "xxx"
   description = "Enter the purpose for tags entry"
}
variable tag_owner {
   type = string
   default = "xxx"
   description = "Enter the owner for tags entry"
}
variable bucket_name {
   type = string
   default = "xxx"
   description = "Enter bucket name"
}
