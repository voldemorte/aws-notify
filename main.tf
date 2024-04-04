resource "pagerduty_service" "this" {
  count = var.create ? 1 : 0

  name              = var.name
  escalation_policy = var.pd_escalation_policy_id
}

module "sns_pagerduty" {
  source  = "dubiety/sns-pagerduty/aws"
  version = "1.0.0"

  create = var.create

  create_sns_topic   = var.create_sns_topic
  display_name       = var.name
  kms_master_key_id  = var.kms_master_key_id
  pagerduty_endpoint = try(pagerduty_service.this[0].html_url, null)
  sns_topic_name     = var.sns_topic_name
  tags               = var.tags
}
