variable "compartment_id" {
  description = "OCID from your tenancy page"
  type        = string
  default     = "ocid1.tenancy.oc1..aaaaaaaaq37bbuobonsyloc7ia5kmyqwyvihx2mt7vc4mcgwlysunq632qfq"
}
variable "region" {
  description = "region where you have OCI tenancy"
  type        = string
  default     = "eu-paris-1"
}


variable "compartement_name" {
  description = "compartement name"
  type        = string
  default = "compartement-test"
}

variable "oracle_linux" {
  description = "Oracle Linux"
  type        = string
  default = "ocid1.image.oc1.eu-paris-1.aaaaaaaapj2webb7xayh5n3y2ridd3yus6xl3lc3ar547gp3ne3w56n2vigq"
}

variable "cluster_name" {
  description = "Cluster Name OKE"
  type        = string
  default = "demo_cluster"
}

variable "k8s_version" {
  description = "version k8s"
  type        = string
  default = "v1.29.1"
}

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
#variable "private_key_password" {}
#variable "app_tag" {}
#variable "environment" {}
#variable "home_region" {}
variable "region" {}
variable "vcn_cidr" {
  default = "10.0.0.0/16"
}