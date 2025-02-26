variable "instances" {
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  default = "Z101296124I5ZLI26KQ4L"
}

variable "domain_name" {
  default = "charankandukuri.site"
}

variable "common_tags" {
  type = map
  default = {
    project = "expense"
    environment = "dev"
  }
}