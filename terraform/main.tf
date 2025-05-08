terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

provider "snowflake" {
  organization_name = var.snowflake_organization_name
  account_name      = var.snowflake_account
  user              = var.snowflake_user
  password          = var.snowflake_password
}

resource "snowflake_database" "user_db" {
  name = var.target_database
}

resource "snowflake_schema" "user_schema" {
  name     = var.target_schema
  database = snowflake_database.user_db.name
}
