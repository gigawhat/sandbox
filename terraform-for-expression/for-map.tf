locals {
  site_that_bypass_cache_map = {
    for k, v in local.sites.cloudflare : k => v if try(v.bypass_cache == "on", false)
  }
}

output "site_that_bypass_cache_map" {
  value = local.site_that_bypass_cache_map
}
