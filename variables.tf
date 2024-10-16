#variables.tf

variable "platform_landing_zone" {
  description = "An object that contains configuration to deploy an enterprise scale landing zone in Azure."
  type = object({
    environment = optional(string)
    root_id = optional(string)
    root_name = string
    default_location = optional(string)
    subscription_ids = optional(map(string))
    enable_ddos_protection = optional(bool)
    base_cidr = optional(string)
    subscription_subnet_mask = optional(number)
    email_security_contact = optional(string)
    log_retention_in_days = optional(string)
    tags = map(string)
  })
}