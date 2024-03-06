resource "random_string" "random-count" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "local_file" "foo-teste-udemy-count" {
  count    = 10

  content  = random_string.random-count.result
  filename = "${path.module}/foo-${count.index}.bar"
}