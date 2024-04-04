output "sns_topic_arn" {
  description = "The ARN of the SNS topic"
  value       = module.sns_pagerduty.sns_topic_arn
}
