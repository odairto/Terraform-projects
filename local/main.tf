provider "local" {
  // Este é um exemplo do provider local usado para treinamento
}

resource "local_file" "example" {
  content  = "Hello, Terraform!"
  filename = "${path.module}/hello.txt"
}
