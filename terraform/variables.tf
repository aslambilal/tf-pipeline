variable "regions" {
  description = "GCP region identifier"
  type        = list
}

variable "zones" {
  description = "GCP zone identifier"
  type        = list
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "network" {
  description = "tf vpc"
  type        = string
}
variable "subnet_1" {
  description = "primary subnet"
  type        = string
}