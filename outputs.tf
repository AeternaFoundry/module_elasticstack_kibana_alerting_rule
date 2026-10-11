output "kibana_alerting_rules_id" {
  description = "Map of id values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_alerting_rules_actions" {
  description = "Map of actions values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no actions are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "kibana_alerting_rules_alert_delay" {
  description = "Map of alert_delay values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no alert_delay are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.alert_delay if v.alert_delay != null }
}
output "kibana_alerting_rules_artifacts" {
  description = "Map of artifacts values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no artifacts are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.artifacts if v.artifacts != null && length(v.artifacts) > 0 }
}
output "kibana_alerting_rules_consumer" {
  description = "Map of consumer values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no consumer are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.consumer if v.consumer != null && length(v.consumer) > 0 }
}
output "kibana_alerting_rules_enabled" {
  description = "Map of enabled values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no enabled are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.enabled if v.enabled != null }
}
output "kibana_alerting_rules_flapping" {
  description = "Map of flapping values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no flapping are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.flapping if v.flapping != null && length(v.flapping) > 0 }
}
output "kibana_alerting_rules_interval" {
  description = "Map of interval values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no interval are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.interval if v.interval != null && length(v.interval) > 0 }
}
output "kibana_alerting_rules_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_alerting_rules_last_execution_date" {
  description = "Map of last_execution_date values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no last_execution_date are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.last_execution_date if v.last_execution_date != null && length(v.last_execution_date) > 0 }
}
output "kibana_alerting_rules_last_execution_status" {
  description = "Map of last_execution_status values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no last_execution_status are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.last_execution_status if v.last_execution_status != null && length(v.last_execution_status) > 0 }
}
output "kibana_alerting_rules_name" {
  description = "Map of name values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no name are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kibana_alerting_rules_notify_when" {
  description = "Map of notify_when values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no notify_when are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.notify_when if v.notify_when != null && length(v.notify_when) > 0 }
}
output "kibana_alerting_rules_params" {
  description = "Map of params values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no params are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.params if v.params != null && length(v.params) > 0 }
}
output "kibana_alerting_rules_rule_id" {
  description = "Map of rule_id values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no rule_id are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.rule_id if v.rule_id != null && length(v.rule_id) > 0 }
}
output "kibana_alerting_rules_rule_type_id" {
  description = "Map of rule_type_id values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no rule_type_id are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.rule_type_id if v.rule_type_id != null && length(v.rule_type_id) > 0 }
}
output "kibana_alerting_rules_scheduled_task_id" {
  description = "Map of scheduled_task_id values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no scheduled_task_id are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.scheduled_task_id if v.scheduled_task_id != null && length(v.scheduled_task_id) > 0 }
}
output "kibana_alerting_rules_space_id" {
  description = "Map of space_id values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_alerting_rules_tags" {
  description = "Map of tags values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no tags are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "kibana_alerting_rules_throttle" {
  description = "Map of throttle values across all kibana_alerting_rules, keyed the same as var.kibana_alerting_rules except keys with no throttle are omitted"
  value       = { for k, v in elasticstack_kibana_alerting_rule.kibana_alerting_rules : k => v.throttle if v.throttle != null && length(v.throttle) > 0 }
}

