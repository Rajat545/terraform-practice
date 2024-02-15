# main.tf

resource "null_resource" "create_folder" {
  # Use a null resource to execute a local-exec provisioner
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "mkdir -p path/to/your/folder"
  }
}


