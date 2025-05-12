variable "SNOWFLAKE_ACCOUNT" {
  description = "Snowflake account name"
  type        = string
  sensitive   = true
}

variable "snowflake_organization_name" {
  description = "Snowflake organization name"
  type        = string
  sensitive   = true
}

variable "host" {
  description = "Snowflake host"
  type        = string
  sensitive   = true
}

variable "SNOWFLAKE_USER" {
  description = "Snowflake user name"
  type        = string
  sensitive   = true
}

variable "SNOWFLAKE_PASSWORD" {
  description = "Snowflake user password"
  type        = string
  sensitive   = true
}

variable "database" {
  description = "Name of the Snowflake database to create"
  type        = string
}

variable "schema" {
  description = "Name of the schema to create"
  type        = string
}

variable "table_name" {
  description = "Name of the table to create"
  type        = string
}
