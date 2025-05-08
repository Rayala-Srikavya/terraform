variable "snowflake_account" {}
variable "snowflake_organization_name" {}
variable "snowflake_user" {}
variable "snowflake_password" {
  sensitive = true
}
variable "target_database" {}
variable "target_schema" {}
