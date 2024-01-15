variable "region" {
  description = "The region where the resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "vm_name" {
  description = "The name of the VM"
  type        = string
  default     = "vm01"
}