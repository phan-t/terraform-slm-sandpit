# creates machine identity certificate
resource "vault_pki_secret_backend_cert" "machine-id" {
  backend     = var.pki_mount_path
  name        = var.pki_role
  common_name = var.common_name
  ip_sans     = [
    "127.0.0.1"
  ]

  uri_sans = [
    local.spiffe_id
  ]
}