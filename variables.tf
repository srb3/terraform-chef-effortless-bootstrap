############ connection details #################

variable "ip" {
  description = "The ip address to install hab and run services"
  type        = string
}

variable "user_name" {
  description = "The ssh or winrm user name used to access the ip addresses provided"
  type        = string
  default     = ""
}

variable "user_pass" {
  description = "The ssh or winrm user password used to access the ip addresses (either user_pass or user_private_key needs to be set)"
  type        = string
  default     = ""
}

variable "user_private_key" {
  description = "The user key used to access the ip addresses (either user_pass or user_private_key needs to be set)"
  type        = string
  default     = ""
}

################# misc ############################

variable "system_type" {
  description = "The system type linux or windows"
  type        = string
  default     = "linux"
}

variable "linux_tmp_path" {
  description = "The location of a temp directory to store install scripts on"
  type        = string
  default     = "/var/tmp"
}

variable "windows_tmp_path" {
  description = "The location of a temp directory to store install scripts on"
  type        = string
  default     = "C:\\effortless_bootstrap"
}

variable "windows_installer_name" {
  description = "The name of the windows chef install script"
  type        = string
  default     = "hab_installer.ps1"
}

variable "linux_installer_name" {
  description = "The name of the linux chef install script"
  type        = string
  default     = "hab_installer.sh"
}

variable "jq_windows_url" {
  description = "A url to a jq binary to download, used in the install process"
  type        = string
  default     = "https://github.com/stedolan/jq/releases/download/jq-1.6/jq-win64.exe"
}

variable "jq_linux_url" {
  description = "A url to a jq binary to download, used in the install process"
  type        = string
  default     = "https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64"
}

############ habitat variables ##################

variable "hab_version" {
  description = "The version of habitat to install"
  type        = string
  default     = "1.6.39"
}

variable "hab_linux_install_url" {
  description = "A url to a hab binary to download"
  type        = string
  default     = "https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh"
}

variable "hab_windows_install_url" {
  description = "A url to a hab binary to download"
  type        = string
  default     = "https://api.bintray.com"
}

############ effortless variables ##################

variable "effortless_pkg" {
  description = "The effortless package used to bootstrap with"
  type        = string
}

variable "clear_node_data" {
  description = "Should the node data be cleared after the effortless chef run"
  type        = bool
  default     = false
}

variable "ssl_cert_file" {
  description = "If needed the path to an ssl cert file to use for the chef client bootstrap run"
  type        = string
  default     = ""
}

variable "proxy_string" {
  description = "If needed set a proxy server details in this variable"
  type        = string
  default     = ""
}

variable "no_proxy_string" {
  description = "If needed set the no_proxy details in this variable"
  type        = string
  default     = ""
}

variable "config" {
  description = "A map containing attributes for the effortless package. Converted to json and passed to the effortless run via a -j flag"
  type        = map
  default     = {}
}
