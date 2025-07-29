# tflint-ignore: terraform_unused_declarations
data "oci_identity_availability_domains" "ad" {
  compartment_id = var.compartment_id
}

data "vault_generic_secret" "pgsql" {
  path = "alpura/${var.application_name}/${var.environment}/pgsql"
}