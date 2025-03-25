variable "location" {
  description = "Azure region for the resources"
  type        = string
  default = "EastUS"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default = "khstoracc"
}

variable "account_tier" {
  description = "The performance tier (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "The replication type (LRS, GRS, ZRS, etc.)"
  type        = string
  default     = "LRS"
}