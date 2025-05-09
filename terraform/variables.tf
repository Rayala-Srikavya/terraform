variable "SNOWFLAKE_ACCOUNT" {
  description = "Snowflake account name"
  type        = string
}

variable "snowflake_organization_name" {}
variable "host" {}

variable "SNOWFLAKE_USER" {
  description = "Snowflake user name"
  type        = string
}

variable "SNOWFLAKE_PASSWORD" {
  description = "Snowflake user password"
  type        = string
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
  description = "Name of the table to create (used in SnowSQL step)"
  type        = string
}



