output "accessor" {
  value = "${vault_approle_auth_backend_login.login.accessor}"
}

output "vault_token" {
  value = "${vault_approle_auth_backend_login.login.client_token}"
}

output "lease_duration" {
  value = "${vault_approle_auth_backend_login.login.lease_duration}"
}

output "lease_started" {
  value = "${vault_approle_auth_backend_login.login.lease_started}"
}

output "renewable" {
  value = "${vault_approle_auth_backend_login.login.renewable}"
}
