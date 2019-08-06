output "module_hook" {
  description = "A list of random string outputs from each connection this module made. Used to enforce the order in which the module is run"
  value       = data.null_data_source.module_hook.*.outputs.data
}