terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
      version = ">0.7.0"
    }
    fmc = {
      source = "CiscoDevNet/fmc"
      version = ">=0.1.1"
    }
  }
}

# Configure the provider with your Cisco APIC credentials.
provider "aci" {
  # APIC Username
  username = var.user.username
  # APIC Password
  password = var.user.password
  # APIC URL
  url      = var.user.url
  insecure = true
}

provider "fmc" {
  fmc_username = var.fmc_user.username
  fmc_password = var.fmc_user.password
  fmc_host = var.fmc_user.url
  fmc_insecure_skip_verify = true
}

