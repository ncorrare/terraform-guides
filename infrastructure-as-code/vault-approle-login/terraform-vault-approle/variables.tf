variable "backend" {
  description = "Approle mount name"
  default     = "approle"
}

variable "role_name" {
  description = "Role name to generate secret ID for"
}

variable "policies" {
  description = "Required policies"
  default = ["default"]
}

