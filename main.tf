resource "random_id" "id" {
  byte_length = 8
}

resource "null_resource" "local" {
  provisioner "local-exec" {
    command = "pwd"
  }
}

data "null_data_source" "command" {
  inputs = {
    command = "pwd"
  }
}
