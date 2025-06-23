variable "application_name" {
  type = string
}
variable "primary_location" {
  type = string
}
variable "environment_name" {
  type = string
}
variable "subscription_id" {
  description = "The Azure subscription ID to use."
  type        = string
  default     = "ca42581a-d708-4048-82cd-d31f0421c8bf"
}