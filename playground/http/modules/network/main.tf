data "http" "httpbin_get" {
  url = var.url
}

resource "local_file" "http_response" {
  content  = data.http.httpbin_get.response_body
  filename = "${path.module}/http_response.json"
}

resource "local_file" "http_status" {
  content  = data.http.httpbin_get.status_code
  filename = "${path.module}/http_status.txt"
}
