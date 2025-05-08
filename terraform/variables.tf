variable "database" {
  description = "Name of the Snowflake database to create"
  type        = string
}

variable "schema" {
  description = "Name of the schema to create"
  type        = string
}

variable "table_name" {
  description = "Name of the table to create (used in SnowSQL step)"
  type        = string
}


