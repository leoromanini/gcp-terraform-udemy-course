resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "local_file" "foo-teste-udemy" {
  content  = random_string.random.result
  filename = "${path.module}/foo.bar"
}