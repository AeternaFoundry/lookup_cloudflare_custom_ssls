output "custom_ssls_lookup_match" {
  description = "Map of match values across all custom_ssls_lookup, keyed the same as var.custom_ssls_lookup except keys with no match are omitted"
  value       = { for k, v in data.cloudflare_custom_ssls.custom_ssls_lookup : k => v.match if v.match != null && length(v.match) > 0 }
}
output "custom_ssls_lookup_max_items" {
  description = "Map of max_items values across all custom_ssls_lookup, keyed the same as var.custom_ssls_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_custom_ssls.custom_ssls_lookup : k => v.max_items if v.max_items != null }
}
output "custom_ssls_lookup_result" {
  description = "Map of result values across all custom_ssls_lookup, keyed the same as var.custom_ssls_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_custom_ssls.custom_ssls_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "custom_ssls_lookup_status" {
  description = "Map of status values across all custom_ssls_lookup, keyed the same as var.custom_ssls_lookup except keys with no status are omitted"
  value       = { for k, v in data.cloudflare_custom_ssls.custom_ssls_lookup : k => v.status if v.status != null && length(v.status) > 0 }
}
output "custom_ssls_lookup_zone_id" {
  description = "Map of zone_id values across all custom_ssls_lookup, keyed the same as var.custom_ssls_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_custom_ssls.custom_ssls_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

