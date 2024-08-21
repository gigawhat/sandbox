locals {
  site_that_bypass_cache_list = [
    for k, v in local.sites.cloudflare : v.hostname if try(v.bypass_cache == "on", false)
  ]
}

output "site_that_bypass_cache_list" {
  value = local.site_that_bypass_cache_list
}
