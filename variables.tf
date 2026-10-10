variable "cloudfront_multitenant_distributions" {
  description = <<EOT
Map of cloudfront_multitenant_distributions, attributes below
Required:
    - comment
    - enabled
Optional:
    - default_root_object
    - http_version
    - tags
    - web_acl_id
    - active_trusted_key_groups (block):
        - items (optional, block):
    - cache_behavior (block):
        - allowed_methods (optional, block):
            - cached_methods (required)
            - items (required)
        - cache_policy_id (optional)
        - compress (optional)
        - field_level_encryption_id (optional)
        - function_association (optional, block):
            - event_type (required)
            - function_arn (required)
        - lambda_function_association (optional, block):
            - event_type (required)
            - include_body (optional)
            - lambda_function_arn (required)
        - origin_request_policy_id (optional)
        - path_pattern (required)
        - realtime_log_config_arn (optional)
        - response_headers_policy_id (optional)
        - target_origin_id (required)
        - trusted_key_groups (optional, block):
            - enabled (optional)
            - items (optional)
        - viewer_protocol_policy (required)
    - custom_error_response (block):
        - error_caching_min_ttl (optional)
        - error_code (required)
        - response_code (optional)
        - response_page_path (optional)
    - default_cache_behavior (block):
        - allowed_methods (optional, block):
            - cached_methods (required)
            - items (required)
        - cache_policy_id (optional)
        - compress (optional)
        - field_level_encryption_id (optional)
        - function_association (optional, block):
            - event_type (required)
            - function_arn (required)
        - lambda_function_association (optional, block):
            - event_type (required)
            - include_body (optional)
            - lambda_function_arn (required)
        - origin_request_policy_id (optional)
        - realtime_log_config_arn (optional)
        - response_headers_policy_id (optional)
        - target_origin_id (required)
        - trusted_key_groups (optional, block):
            - enabled (optional)
            - items (optional)
        - viewer_protocol_policy (required)
    - origin (block):
        - connection_attempts (optional)
        - connection_timeout (optional)
        - custom_header (optional, block):
            - header_name (required)
            - header_value (required)
        - custom_origin_config (optional, block):
            - http_port (required)
            - https_port (required)
            - ip_address_type (optional)
            - origin_keepalive_timeout (optional)
            - origin_mtls_config (optional, block):
                - client_certificate_arn (required)
            - origin_protocol_policy (required)
            - origin_read_timeout (optional)
            - origin_ssl_protocols (required)
        - domain_name (required)
        - id (required)
        - origin_access_control_id (optional)
        - origin_path (optional)
        - origin_shield (optional, block):
            - enabled (required)
            - origin_shield_region (optional)
        - response_completion_timeout (optional)
        - vpc_origin_config (optional, block):
            - origin_keepalive_timeout (optional)
            - origin_read_timeout (optional)
            - vpc_origin_id (required)
    - origin_group (block):
        - failover_criteria (optional, block):
            - status_codes (required)
        - id (required)
        - member (optional, block):
            - origin_id (required)
    - restrictions (block):
        - geo_restriction (optional, block):
            - items (optional)
            - restriction_type (required)
    - tenant_config (block):
        - parameter_definition (optional, block):
            - definition (optional, block):
                - string_schema (optional, block):
                    - comment (optional)
                    - default_value (optional)
                    - required (required)
            - name (required)
    - viewer_certificate (block):
        - acm_certificate_arn (optional)
        - cloudfront_default_certificate (optional)
        - minimum_protocol_version (optional)
        - ssl_support_method (optional)
EOT

  type = map(object({
    comment             = string
    enabled             = bool
    default_root_object = optional(string)
    http_version        = optional(string)
    tags                = optional(map(string))
    web_acl_id          = optional(string)
    active_trusted_key_groups = optional(list(object({
      items = optional(list(object({
      })))
    })))
    cache_behavior = optional(list(object({
      allowed_methods = optional(list(object({
        cached_methods = set(string)
        items          = set(string)
      })))
      cache_policy_id           = optional(string)
      compress                  = optional(bool)
      field_level_encryption_id = optional(string)
      function_association = optional(list(object({
        event_type   = string
        function_arn = string
      })))
      lambda_function_association = optional(list(object({
        event_type          = string
        include_body        = optional(bool)
        lambda_function_arn = string
      })))
      origin_request_policy_id   = optional(string)
      path_pattern               = string
      realtime_log_config_arn    = optional(string)
      response_headers_policy_id = optional(string)
      target_origin_id           = string
      trusted_key_groups = optional(list(object({
        enabled = optional(bool)
        items   = optional(list(string))
      })))
      viewer_protocol_policy = string
    })))
    custom_error_response = optional(list(object({
      error_caching_min_ttl = optional(number)
      error_code            = number
      response_code         = optional(string)
      response_page_path    = optional(string)
    })))
    default_cache_behavior = optional(list(object({
      allowed_methods = optional(list(object({
        cached_methods = set(string)
        items          = set(string)
      })))
      cache_policy_id           = optional(string)
      compress                  = optional(bool)
      field_level_encryption_id = optional(string)
      function_association = optional(list(object({
        event_type   = string
        function_arn = string
      })))
      lambda_function_association = optional(list(object({
        event_type          = string
        include_body        = optional(bool)
        lambda_function_arn = string
      })))
      origin_request_policy_id   = optional(string)
      realtime_log_config_arn    = optional(string)
      response_headers_policy_id = optional(string)
      target_origin_id           = string
      trusted_key_groups = optional(list(object({
        enabled = optional(bool)
        items   = optional(list(string))
      })))
      viewer_protocol_policy = string
    })))
    origin = optional(list(object({
      connection_attempts = optional(number)
      connection_timeout  = optional(number)
      custom_header = optional(list(object({
        header_name  = string
        header_value = string
      })))
      custom_origin_config = optional(list(object({
        http_port                = number
        https_port               = number
        ip_address_type          = optional(string)
        origin_keepalive_timeout = optional(number)
        origin_mtls_config = optional(list(object({
          client_certificate_arn = string
        })))
        origin_protocol_policy = string
        origin_read_timeout    = optional(number)
        origin_ssl_protocols   = set(string)
      })))
      domain_name              = string
      id                       = string
      origin_access_control_id = optional(string)
      origin_path              = optional(string)
      origin_shield = optional(list(object({
        enabled              = bool
        origin_shield_region = optional(string)
      })))
      response_completion_timeout = optional(number)
      vpc_origin_config = optional(list(object({
        origin_keepalive_timeout = optional(number)
        origin_read_timeout      = optional(number)
        vpc_origin_id            = string
      })))
    })))
    origin_group = optional(list(object({
      failover_criteria = optional(list(object({
        status_codes = set(number)
      })))
      id = string
      member = optional(list(object({
        origin_id = string
      })))
    })))
    restrictions = optional(list(object({
      geo_restriction = optional(list(object({
        items            = optional(set(string))
        restriction_type = string
      })))
    })))
    tenant_config = optional(list(object({
      parameter_definition = optional(list(object({
        definition = optional(list(object({
          string_schema = optional(list(object({
            comment       = optional(string)
            default_value = optional(string)
            required      = bool
          })))
        })))
        name = string
      })))
    })))
    viewer_certificate = optional(list(object({
      acm_certificate_arn            = optional(string)
      cloudfront_default_certificate = optional(bool)
      minimum_protocol_version       = optional(string)
      ssl_support_method             = optional(string)
    })))
  }))
}

