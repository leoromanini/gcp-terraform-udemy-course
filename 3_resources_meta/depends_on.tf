resource "random_string" "random-depends" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "local_file" "foo-teste-udemy-depends" {
  content  = "bar"
  filename = "${path.module}/foo.bar"

  depends_on = [random_string.random-depends]
}