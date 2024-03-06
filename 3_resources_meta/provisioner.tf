resource "random_string" "random-provisioner" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "local_file" "foo-teste-udemy-provisioner" {
  content  = random_string.random-provisioner.result
  filename = "${path.module}/foo.bar"

  provisioner "local-exec" {
    command = "ls -la foo.bar"
  }
}