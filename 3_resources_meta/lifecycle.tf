resource "random_string" "random-lifecycle" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "local_file" "foo-teste-udemy-lifecycle" {
  content  = random_string.random-lifecycle.result
  filename = "${path.module}/foo.bar"

  lifecycle {
    prevent_destroy = true
  }
}