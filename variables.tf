variable "resource_group_name" {
    type = string
    description = "Existing resource group name"
    default = "azure-model"
}


variable "cdn_profile_name"{
    type = string
    description = "CDN Profile Name"
    default = "cdn-mps-profile"
}

variable "sku"{
    type = string
    description = "sku name for CDN Profile"
    default = "Standard_Akamai"
}

variable "endpoints"{
    type = map(object({
        origin_name = string
        origin_host_name = string
        http_port = string
        https_port = string
    }))
    description = "cdn endpoints for the cdn service"
    default = {
        "endpoint-one" = {
            origin_name = "origin-one"
            origin_host_name = "www.terraform.io"
            http_port = 80
            https_port = 443
        }
        "endpoint-two" = {
            origin_name = "origin-two"
            origin_host_name = "www.msn.com"
            http_port = 80
            https_port = 443
        }
    }
}