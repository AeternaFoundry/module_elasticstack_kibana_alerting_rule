variable "kibana_alerting_rules" {
  description = <<EOT
Map of kibana_alerting_rules, attributes below
Required:
    - consumer
    - interval
    - name
    - params
    - rule_type_id
Optional:
    - alert_delay
    - artifacts
    - enabled
    - flapping
    - notify_when
    - rule_id
    - space_id
    - tags
    - throttle
    - timeouts
    - actions (block):
        - alerts_filter (optional, block):
            - kql (optional)
            - timeframe (optional, block):
                - days (optional)
                - hours_end (optional)
                - hours_start (optional)
                - timezone (optional)
        - frequency (optional, block):
            - notify_when (optional)
            - summary (optional)
            - throttle (optional)
        - group (optional)
        - id (required)
        - params (required)
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    consumer     = string
    interval     = string
    name         = string
    params       = string
    rule_type_id = string
    alert_delay  = optional(number)
    artifacts = optional(object({
      dashboards = optional(list(object({
        id = string
      })))
      investigation_guide = optional(object({
        content      = optional(string)
        content_path = optional(string)
      }))
    }))
    enabled = optional(bool)
    flapping = optional(object({
      enabled                 = optional(bool)
      look_back_window        = optional(number)
      status_change_threshold = optional(number)
    }))
    notify_when = optional(string)
    rule_id     = optional(string)
    space_id    = optional(string)
    tags        = optional(set(string))
    throttle    = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    actions = optional(list(object({
      alerts_filter = optional(list(object({
        kql = optional(string)
        timeframe = optional(list(object({
          days        = optional(list(number))
          hours_end   = optional(string)
          hours_start = optional(string)
          timezone    = optional(string)
        })))
      })))
      frequency = optional(list(object({
        notify_when = optional(string)
        summary     = optional(bool)
        throttle    = optional(string)
      })))
      group  = optional(string)
      id     = string
      params = string
    })))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

