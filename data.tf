# tflint-ignore: terraform_unused_declarations
data "oci_identity_availability_domains" "ad" {
  compartment_id = var.compartment_id
}

#pwd=Ax98p.@