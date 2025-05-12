terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

provider "snowflake" {
  account_name      = var.SNOWFLAKE_ACCOUNT
  organization_name = var.snowflake_organization_name
  host              = var.host
  user              = var.SNOWFLAKE_USER
  password          = var.SNOWFLAKE_PASSWORD
}

resource "snowflake_database" "user_db" {
  name = var.database
}

resource "snowflake_schema" "user_schema" {
  name     = var.schema
  database = snowflake_database.user_db.name
}

resource "snowflake_table" "user_table" {
  name     = var.table_name
  database = snowflake_database.user_db.name
  schema   = snowflake_schema.user_schema.name

  column {
    name = "id"
    type = "NUMBER"
  }

  column {
    name = "name"
    type = "VARCHAR"
  }

  column {
    name = "created_at"
    type = "TIMESTAMP_LTZ"
  }
}

variable "SNOWFLAKE_ACCOUNT" {
  description = "Snowflake account name"
  type        = string
}

variable "snowflake_organization_name" {
  description = "Snowflake organization name"
  type        = string
}

variable "host" {
  description = "Snowflake host"
  type        = string
}

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
  description = "Name of the table to create"
  type        = string
}
