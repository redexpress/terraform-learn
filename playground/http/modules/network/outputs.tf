output "status_code" {
  value = data.http.httpbin_get.status_code
}

output "body" {
  value = data.http.httpbin_get.response_body
}
