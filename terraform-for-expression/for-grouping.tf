locals {
  // Group by dns_zone
  // https://developer.hashicorp.com/terraform/language/expressions/for#grouping-results
  site_that_bypass_cache_group_by_zone = {
    for k, v in local.sites.cloudflare : v.dns_zone => v.hostname... if try(v.bypass_cache == "on", false)
  }
}

output "map_list_group" {
  value = local.site_that_bypass_cache_group_by_zone
}
