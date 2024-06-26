variable "create" {
  description = "Whether to create all the resources"
  type        = bool
  default     = true
}

variable "create_sns_topic" {
  description = "Whether to create new SNS topic"
  type        = bool
  default     = true
}

variable "sns_topic_name" {
  description = "The name of SNS topic to create or reference"
  type        = string
}

variable "display_name" {
  description = "The display name for the SNS topic"
  type        = string
  default     = ""
}

variable "kms_master_key_id" {
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK"
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to the sns_topic resource"
  type        = map(string)
  default     = {}
}

variable "pd_escalation_policy_id" {
  description = "(Required) The escalation policy used by this service."
  type        = string
}
