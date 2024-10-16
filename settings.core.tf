#settings.core.tf

# Configure the custom landing zones to deploy in
# addition to the core resource hierarchy
locals {
  custom_landing_zones = {
    "${var.platform_landing_zone.root_id}-workloads" = {
      display_name               = "${upper(var.platform_landing_zone.root_id)} Workloads"
      parent_management_group_id = "${var.platform_landing_zone.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_workload"
        parameters     = {}
        access_control = {}
      }
    }
    "${var.platform_landing_zone.root_id}-offnets" = {
      display_name               = "${upper(var.platform_landing_zone.root_id)} Offnets"
      parent_management_group_id = "${var.platform_landing_zone.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "customer_offnet"
        parameters = {
          Deny-Resource-Locations = {
            listOfAllowedLocations = [
              var.platform_landing_zone.default_location
            ]
          }
          Deny-RSG-Locations = {
            listOfAllowedLocations = [
              var.platform_landing_zone.default_location
            ]
          }
        }
        access_control = {}
      }
    }
  }
}
