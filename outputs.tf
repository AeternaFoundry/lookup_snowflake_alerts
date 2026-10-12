output "alerts_lookup_id" {
  description = "Map of id values across all alerts_lookup, keyed the same as var.alerts_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_alerts.alerts_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alerts_lookup_alerts" {
  description = "Map of alerts values across all alerts_lookup, keyed the same as var.alerts_lookup except keys with no alerts are omitted"
  value       = { for k, v in data.snowflake_alerts.alerts_lookup : k => v.alerts if v.alerts != null && length(v.alerts) > 0 }
}
output "alerts_lookup_database" {
  description = "Map of database values across all alerts_lookup, keyed the same as var.alerts_lookup except keys with no database are omitted"
  value       = { for k, v in data.snowflake_alerts.alerts_lookup : k => v.database if v.database != null && length(v.database) > 0 }
}
output "alerts_lookup_pattern" {
  description = "Map of pattern values across all alerts_lookup, keyed the same as var.alerts_lookup except keys with no pattern are omitted"
  value       = { for k, v in data.snowflake_alerts.alerts_lookup : k => v.pattern if v.pattern != null && length(v.pattern) > 0 }
}
output "alerts_lookup_schema" {
  description = "Map of schema values across all alerts_lookup, keyed the same as var.alerts_lookup except keys with no schema are omitted"
  value       = { for k, v in data.snowflake_alerts.alerts_lookup : k => v.schema if v.schema != null && length(v.schema) > 0 }
}

