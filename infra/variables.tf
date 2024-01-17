variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "aca"
}

variable "location" {
  description = "Location of the resource group"
  type        = string
  default     = "East US"
}

variable "name" {
    description = "name of the instance"
    default     = "acctest"
}