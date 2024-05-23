resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name 
    compartment_id = oci_identity_compartment.tf-compartment.id
    shape = "VM.Standard2.1"
    source_details {
        source_id = "ocid1.image.oc1.eu-paris-1.aaaaaaaamv55xoudlohiv6kkrfg7nvgtsmfes5uu4y5e7offigsuat5regjq"
        source_type = "image"
    }

    # Optional
    display_name = "oci-infra1"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.vcn-public-subnet.id
    }
    metadata = {
        ssh_authorized_keys = file("/Users/Rodolphe/github/oci/oci-mac-ssh.pub")
    } 
    preserve_boot_volume = false
}
