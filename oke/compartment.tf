
resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = var.compartment_id
    description = "Compartment for Terraform resources."
    name = "tf-simple-infra"
}
