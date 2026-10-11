data "cloudflare_custom_ssls" "custom_ssls_lookup" {
  for_each = var.custom_ssls_lookup

  match     = each.value.match
  max_items = each.value.max_items
  status    = each.value.status
  zone_id   = each.value.zone_id
}

