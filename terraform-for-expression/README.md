# Summary 

Use Terraform's [for](https://developer.hashicorp.com/terraform/language/expressions/for) Expression to transform a complex data structure into a new map or list based on values from the original data structure.

* [Create a map from a map of objects](./for-map.tf)
* [Create a list from a map of objects](./for-list.tf)
* [Create a map from a map of objects grouped by a key](./for-grouping.tf)

## Usage

```bash

tf init
Initializing the backend...
Initializing provider plugins...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
╭─jkeife@gastown ~/go/src/github.com/gigawhat/sandbox/terraform-for-expression ‹main●› (⎈|N/A:default)
╰─$ tf apply -auto-approve 

Changes to Outputs:
  + site_that_bypass_cache_list = [
      + "app.foobar.com",
      + "auth.foobar.com",
      + "book.foobar.com",
      + "book2.foobar.com",
      + "dp.foobar.com",
      + "notification.foobar.com",
    ]
  + site_that_bypass_cache_map  = {
      + app-foobar-com          = {
          + bypass_cache = "on"
          + dns_zone     = "foobar.com"
          + hostname     = "app.foobar.com"
        }
      + auth-foobar-com         = {
          + always_use_https = "off"
          + bypass_cache     = "on"
          + dns_zone         = "foobar.com"
          + hostname         = "auth.foobar.com"
        }
      + book-foobar-com         = {
          + bypass_cache = "on"
          + dns_zone     = "foobar.com"
          + hostname     = "book.foobar.com"
        }
      + book2-foobar-com        = {
          + bypass_cache = "on"
          + dns_zone     = "foobar.com"
          + hostname     = "book2.foobar.com"
        }
      + dp-foobar-com           = {
          + bypass_cache = "on"
          + dns_zone     = "foobar.com"
          + hostname     = "dp.foobar.com"
        }
      + notification-foobar-com = {
          + bypass_cache = "on"
          + dns_zone     = "foobar.com"
          + hostname     = "notification.foobar.com"
        }
    }

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

site_that_bypass_cache_list = [
  "app.foobar.com",
  "auth.foobar.com",
  "book.foobar.com",
  "book2.foobar.com",
  "dp.foobar.com",
  "notification.foobar.com",
]
site_that_bypass_cache_map = {
  "app-foobar-com" = {
    "bypass_cache" = "on"
    "dns_zone" = "foobar.com"
    "hostname" = "app.foobar.com"
  }
  "auth-foobar-com" = {
    "always_use_https" = "off"
    "bypass_cache" = "on"
    "dns_zone" = "foobar.com"
    "hostname" = "auth.foobar.com"
  }
  "book-foobar-com" = {
    "bypass_cache" = "on"
    "dns_zone" = "foobar.com"
    "hostname" = "book.foobar.com"
  }
  "book2-foobar-com" = {
    "bypass_cache" = "on"
    "dns_zone" = "foobar.com"
    "hostname" = "book2.foobar.com"
  }
  "dp-foobar-com" = {
    "bypass_cache" = "on"
    "dns_zone" = "foobar.com"
    "hostname" = "dp.foobar.com"
  }
  "notification-foobar-com" = {
    "bypass_cache" = "on"
    "dns_zone" = "foobar.com"
    "hostname" = "notification.foobar.com"
  }
}



```
