data "snowflake_alerts" "alerts_lookup" {
  for_each = var.alerts_lookup

  database = each.value.database
  pattern  = each.value.pattern
  schema   = each.value.schema
}

