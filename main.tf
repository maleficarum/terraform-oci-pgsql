resource "oci_psql_db_system" "example_db" {
  compartment_id = var.compartment_id
  display_name   = var.instance_configuration.name
  shape          = var.instance_configuration.shape

  storage_details {
    is_regionally_durable = var.instance_configuration.storage_is_regional
    system_type           = var.instance_configuration.storage_type
    #availability_domain  = data.oci_identity_availability_domains.ads.availability_domains[0].name
    iops = var.instance_configuration.iops
  }

  db_version = var.instance_configuration.version

  credentials {
    username = "admin" # Default admin username

    password_details {
      password      = var.db_password
      password_type = "PLAIN_TEXT"
    }
  }

  network_details {
    subnet_id = var.subnet
  }

  defined_tags = {
    "Oracle-Tags.CreatedBy"   = "default/terraform-cae",
    "Oracle-Tags.Environment" = var.environment
  }

  instance_count = var.instance_configuration.instance_count
}