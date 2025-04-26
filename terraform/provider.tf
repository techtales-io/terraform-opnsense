provider "vault" {
  # ATLANTIS_INJECT_VAULT_CONFIG
}

data "vault_generic_secret" "terraform_opnsense" {
  path = "infra/techtales/terraform-opnsense"
}

provider "opnsense" {
  uri = data.vault_generic_secret.terraform_opnsense.data["uri"]
  api_key = data.vault_generic_secret.terraform_opnsense.data["api_key"]
  api_secret = data.vault_generic_secret.terraform_opnsense.data["api_secret"]
}
