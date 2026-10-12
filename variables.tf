variable "alerts_lookup" {
  description = <<EOT
Map of alerts_lookup, attributes below
Optional:
    - database
    - pattern
    - schema
EOT

  type = map(object({
    database = optional(string)
    pattern  = optional(string)
    schema   = optional(string)
  }))
}

