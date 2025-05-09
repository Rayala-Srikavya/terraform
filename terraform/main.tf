terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 1.0.0"
    }
    snowsql = {
      source  = "aidanmelen/snowsql"
      version = ">= 0.1.0"
    }
  }
}

provider "snowflake" {
  account_name      = var.SNOWFLAKE_ACCOUNT
  organization_name = var.snowflake_organization_name
  account_name      = var.snowflake_account
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
