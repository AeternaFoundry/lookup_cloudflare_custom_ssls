variable "custom_ssls_lookup" {
  description = <<EOT
Map of custom_ssls_lookup, attributes below
Optional:
    - match
    - max_items
    - status
    - zone_id
EOT

  type = map(object({
    match     = optional(string)
    max_items = optional(number)
    status    = optional(string)
    zone_id   = optional(string)
  }))
}

