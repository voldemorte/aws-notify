terraform {
  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = ">= 2.2.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.36"
    }
  }
}
