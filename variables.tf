variable "server_id" {
  type        = string
  description = "Server to the snapshot should be created from"
}

variable "description" {
  type        = string
  default     = null
  description = "Description of the snapshot"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "User-defined labels (key-value pairs) should be created with"
}

variable "revision" {
  type        = string
  default     = null
  description = "Revision of the snapshot"
}
