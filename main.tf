resource "elasticstack_kibana_alerting_rule" "kibana_alerting_rules" {
  for_each = var.kibana_alerting_rules

  consumer     = each.value.consumer
  interval     = each.value.interval
  name         = each.value.name
  params       = each.value.params
  rule_type_id = each.value.rule_type_id
  alert_delay  = each.value.alert_delay
  artifacts    = each.value.artifacts
  enabled      = each.value.enabled
  flapping     = each.value.flapping
  notify_when  = each.value.notify_when
  rule_id      = each.value.rule_id
  space_id     = each.value.space_id
  tags         = each.value.tags
  throttle     = each.value.throttle
  timeouts     = each.value.timeouts

  dynamic "actions" {
    for_each = each.value.actions != null ? each.value.actions : []
    content {
      dynamic "alerts_filter" {
        for_each = actions.value.alerts_filter != null ? actions.value.alerts_filter : []
        content {
          kql = alerts_filter.value.kql
          dynamic "timeframe" {
            for_each = alerts_filter.value.timeframe != null ? alerts_filter.value.timeframe : []
            content {
              days        = timeframe.value.days
              hours_end   = timeframe.value.hours_end
              hours_start = timeframe.value.hours_start
              timezone    = timeframe.value.timezone
            }
          }
        }
      }
      dynamic "frequency" {
        for_each = actions.value.frequency != null ? actions.value.frequency : []
        content {
          notify_when = frequency.value.notify_when
          summary     = frequency.value.summary
          throttle    = frequency.value.throttle
        }
      }
      group  = actions.value.group
      id     = actions.value.id
      params = actions.value.params
    }
  }

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

