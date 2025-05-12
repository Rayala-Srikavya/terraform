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

