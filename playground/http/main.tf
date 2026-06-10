module "network" {
  source = "./modules/network"
  url    = "https://httpbin.org/get"
}

data "http" "example" {
  url = "https://httpbin.org/get"
}

resource "local_file" "http_response2" {
  filename = "http_response2.json"
  content  = data.http.example.response_body
}

output "origin" {
  value = jsondecode(data.http.example.response_body)["origin"]
}

output "headers" {
  value = jsondecode(data.http.example.response_body)["headers"]
}
