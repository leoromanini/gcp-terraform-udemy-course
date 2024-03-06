resource "random_string" "random-for-each" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "local_file" "foo-teste-udemy-for-each" {
  for_each = tomap({
    chave1 = "valor1",
    chave2 = "valor2"
  })

  content  = each.value
  filename = "${path.module}/foo-${each.key}.bar"
}