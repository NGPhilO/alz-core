#development.tfvars

platform_landing_zone = {
    environment = "development"
    root_id = "dev"
    root_name = "Nohms-Azure-Dev"
    default_location = "uksouth"
    subscription_ids = {
    connectivity = "12db2bbe-c49c-4a5d-8937-66be8763e709"
    management = "dc8fb845-0e16-4110-95a0-e0c94568607e"
    identity = "78972e09-7e4a-4f42-83ed-3b33f1766fd5"
    }
    enable_ddos_protection = false
    base_cidr = "10.172.0.0/13"
    subscription_subnet_mask = 21
    email_security_contact = "ccoe@euro.ngc.com"
    log_retention_in_days = "365"
    tags = {
        Terraform   = "True"
        Environment = "development"
  }
}