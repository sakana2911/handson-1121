terraform {
	required_providers {
		aci = {
		source = "CiscoDevNet/aci"
		version = "2.2.1"
	    }
     }
 }
provider "aci" {
	username = " "
	password = " "
	url = "https:// "
 	insecure = true
 }
resource "aci_tenant" "terraform_tenant" {
	name = "CCOID-tenant-1121"
 }

resource "aci_vrf" "vrf" {
	tenant_dn = aci_tenant.terraform_tenant.id
	name = "VRF1"
 }
