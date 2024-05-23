# Source from https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_subnet

resource "oci_core_subnet" "vcn-public-subnet-api"{

  # Required
  compartment_id = oci_identity_compartment.tf-compartment.id
  vcn_id = module.vcn.vcn_id
  cidr_block = "10.0.0.0/28"
 
  # Optional
  route_table_id = module.vcn.nat_route_id
  security_list_ids = [oci_core_security_list.public-security-list.id]
  display_name = "public-subnet-api"
  #dns_label = "rfdemopublic1"
}