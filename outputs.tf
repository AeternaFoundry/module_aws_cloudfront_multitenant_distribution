output "cloudfront_multitenant_distributions_id" {
  description = "Map of id values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfront_multitenant_distributions_active_trusted_key_groups" {
  description = "Map of active_trusted_key_groups values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.active_trusted_key_groups if v.active_trusted_key_groups != null && length(v.active_trusted_key_groups) > 0 }
}
output "cloudfront_multitenant_distributions_arn" {
  description = "Map of arn values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudfront_multitenant_distributions_cache_behavior" {
  description = "Map of cache_behavior values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.cache_behavior if v.cache_behavior != null && length(v.cache_behavior) > 0 }
}
output "cloudfront_multitenant_distributions_caller_reference" {
  description = "Map of caller_reference values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.caller_reference if v.caller_reference != null && length(v.caller_reference) > 0 }
}
output "cloudfront_multitenant_distributions_comment" {
  description = "Map of comment values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "cloudfront_multitenant_distributions_connection_mode" {
  description = "Map of connection_mode values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.connection_mode if v.connection_mode != null && length(v.connection_mode) > 0 }
}
output "cloudfront_multitenant_distributions_custom_error_response" {
  description = "Map of custom_error_response values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.custom_error_response if v.custom_error_response != null && length(v.custom_error_response) > 0 }
}
output "cloudfront_multitenant_distributions_default_cache_behavior" {
  description = "Map of default_cache_behavior values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.default_cache_behavior if v.default_cache_behavior != null && length(v.default_cache_behavior) > 0 }
}
output "cloudfront_multitenant_distributions_default_root_object" {
  description = "Map of default_root_object values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.default_root_object if v.default_root_object != null && length(v.default_root_object) > 0 }
}
output "cloudfront_multitenant_distributions_domain_name" {
  description = "Map of domain_name values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "cloudfront_multitenant_distributions_enabled" {
  description = "Map of enabled values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.enabled if v.enabled != null }
}
output "cloudfront_multitenant_distributions_etag" {
  description = "Map of etag values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "cloudfront_multitenant_distributions_http_version" {
  description = "Map of http_version values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.http_version if v.http_version != null && length(v.http_version) > 0 }
}
output "cloudfront_multitenant_distributions_in_progress_invalidation_batches" {
  description = "Map of in_progress_invalidation_batches values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.in_progress_invalidation_batches if v.in_progress_invalidation_batches != null }
}
output "cloudfront_multitenant_distributions_last_modified_time" {
  description = "Map of last_modified_time values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.last_modified_time if v.last_modified_time != null && length(v.last_modified_time) > 0 }
}
output "cloudfront_multitenant_distributions_origin" {
  description = "Map of origin values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.origin if v.origin != null && length(v.origin) > 0 }
}
output "cloudfront_multitenant_distributions_origin_group" {
  description = "Map of origin_group values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.origin_group if v.origin_group != null && length(v.origin_group) > 0 }
}
output "cloudfront_multitenant_distributions_restrictions" {
  description = "Map of restrictions values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.restrictions if v.restrictions != null && length(v.restrictions) > 0 }
}
output "cloudfront_multitenant_distributions_status" {
  description = "Map of status values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.status if v.status != null && length(v.status) > 0 }
}
output "cloudfront_multitenant_distributions_tags" {
  description = "Map of tags values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudfront_multitenant_distributions_tags_all" {
  description = "Map of tags_all values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "cloudfront_multitenant_distributions_tenant_config" {
  description = "Map of tenant_config values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.tenant_config if v.tenant_config != null && length(v.tenant_config) > 0 }
}
output "cloudfront_multitenant_distributions_viewer_certificate" {
  description = "Map of viewer_certificate values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.viewer_certificate if v.viewer_certificate != null && length(v.viewer_certificate) > 0 }
}
output "cloudfront_multitenant_distributions_web_acl_id" {
  description = "Map of web_acl_id values across all cloudfront_multitenant_distributions, keyed the same as var.cloudfront_multitenant_distributions"
  value       = { for k, v in aws_cloudfront_multitenant_distribution.cloudfront_multitenant_distributions : k => v.web_acl_id if v.web_acl_id != null && length(v.web_acl_id) > 0 }
}

