locals {
  sites = {
    cloudflare = {
      auth-foobar-com = {
        hostname         = "auth.foobar.com"
        dns_zone         = "foobar.com"
        always_use_https = "off"
        bypass_cache     = "on"
      }

      app-foobar-com = {
        hostname     = "app.foobar.com"
        dns_zone     = "foobar.com"
        bypass_cache = "on"
      }

      book-foobar-com = {
        hostname     = "book.foobar.com"
        dns_zone     = "foobar.com"
        bypass_cache = "on"
      }

      book2-foobar-com = {
        hostname     = "book2.foobar.com"
        dns_zone     = "foobar.com"
        bypass_cache = "on"
      }

      dp-foobar-com = {
        hostname     = "dp.foobar.com"
        dns_zone     = "foobar.com"
        bypass_cache = "on"
      }

      forms-foobar-com = {
        hostname = "forms.foobar.com"
        dns_zone = "foobar.com"
      }

      forms-barfoo-com = {
        hostname     = "forms.barfoo.com"
        dns_zone     = "barfoo.com"
        bypass_cache = "on"
      }

      frontend-integrations-dashboard-foobar-com = {
        hostname = "frontend-integrations-dashboard.foobar.com"
        dns_zone = "foobar.com"
      }

      notification-foobar-com = {
        hostname     = "notification.foobar.com"
        dns_zone     = "foobar.com"
        bypass_cache = "on"
      }

      releases-foobar-com = {
        hostname         = "releases.foobar.com"
        dns_zone         = "foobar.com"
        always_use_https = "off"
      }
    }
  }
}
