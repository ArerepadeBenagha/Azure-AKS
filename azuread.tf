resource "random_password" "password" {
  length  = 32
  special = true
}

resource "azuread_application" "example" {
  display_name               = "example"
  available_to_other_tenants = true
}

resource "azuread_service_principal" "example" {
  application_id = azuread_application.example.application_id
}

resource "azuread_service_principal_password" "example" {
  service_principal_id = azuread_service_principal.example.id
  value                = random_password.password.result
  end_date_relative    = "17520h" #2y
}
