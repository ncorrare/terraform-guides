data "vault_approle_auth_backend_role_id" "role" {
  backend   = "${var.backend}"
  role_name = "${var.role_name}"
}

resource "vault_approle_auth_backend_role_secret_id" "id" {
  backend   = "${var.backend}"
  role_name = "${var.role_name}"
}

resource "vault_approle_auth_backend_login" "login" {
  backend   = "${var.backend}"
  role_id   = "${data.vault_approle_auth_backend_role_id.role.role_id}"
  secret_id = "${vault_approle_auth_backend_role_secret_id.id.secret_id}"
}
