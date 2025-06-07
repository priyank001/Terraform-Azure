variable "application_name" {
  type = string
  
}

variable "environment_env" {
  type = string
}

variable "api_key" {
  type = string
  sensitive = true
}

variable "instance_count" {
  type    = number
  default = 1
  validation {
    condition     = var.instance_count > 0 && var.instance_count != null && var.instance_count <=10
    error_message = "Instance count must be greater than zero. and less than 10"
  }
  
}

variable "enabled" {
  type    = bool
  default = true
}

variable "regions" {
  type    = list(string)
  default = []
}

variable "region_instance_count" {
  type    = map(number)
  default = {}
}

variable "region_set" {
  type    = set(string)
  default = []
}