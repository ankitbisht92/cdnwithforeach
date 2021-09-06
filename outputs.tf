# Set out the output variables
output "cdn_profile_name" {
    value = azurerm_cdn_profile.cdn_profile.name
    description = "CDN Profile Name"
}
