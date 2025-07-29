variable "instance_configuration" {
  type = object({
    name                = string,
    state               = string,
    version             = string, #16
    shape               = string, #"PostgreSQL.VM.Standard.E4.2.32GB"
    iops                = number, #from 500 - 300 000,
    storage_type        = string  #OCI_OPTIMIZED_STORAGE , LOCAL_STORAGE
    storage_is_regional = bool,   #false for development
    instance_count      = number
  })
  description = "Instance configuration"
}

variable "subnet" {
  type        = string
  description = "The ID of the target subnet"
}

variable "compartment_id" {
  type        = string
  description = "This compartment ID is for global queries. No resource will be deployed in this compartment"
}

variable "environment" {
  type        = string
  description = "The deployed compartment"
}

variable "application_name" {
  type        = string
  default     = "General"
  description = "The application name that will be deployed over this resource"
}

variable "vault_token" {
  type        = string
  description = "The token to access the vault"
}

variable "vault_host" {
  type        = string
  description = "The vault host with port"
}