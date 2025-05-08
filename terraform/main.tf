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
  account = var.snowflake_account
  username = var.snowflake_user
  password = var.snowflake_password
}

resource "snowflake_database" "user_db" {
  name = var.database
}

resource "snowflake_schema" "user_schema" {
  name     = var.schema
  database = snowflake_database.user_db.name
}
