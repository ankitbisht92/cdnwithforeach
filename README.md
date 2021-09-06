## cdn
## Purpose
This module is to manage an Azure CDN Service

## Usage
Use this module to manage an Azure CDN Service as part of a larger composition
### Examples

#### Simple Web App module usage

module "cdn" {
    source                                  = "./cdn"
    cdn_profile_name                        = module.naming.cdn_profile.name_unique
    resource_group_name                     = "rg"
    az_region                               = ""
    sku                                     = "Standard_Verizon"
    cdn_endpoint_name                       = module.naming.cdn_endpoint.name_unique
    origin_name                             = "sampleorigin"
    origin_host_name                        = "samplehost"
}

## External Dependencies
1. An Azure Resource Group