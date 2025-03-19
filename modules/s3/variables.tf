variable sqs_name {
   type = string
   default = "xxx"
   description = "Enter the SQS name to be created"
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
variable tag_details {
   type = string
   default = "xxx"
   description = "Enter the details for tags entry"
}
variable s3_count {
   type = number
   default = 1
   description = "Enter how many s3 buckets needed."
}
variable bucket_name {
   type = string
   default = "xxx"
   description = "Enter bucket name"
}
variable availability_zone_id {
   type = string
   default = "xxx"
   description = "Enter availability_zone_id"
}
