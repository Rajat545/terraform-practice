resource "local_file" "devops" {
    filename = var.file_list[0]
    content = var.content_map["content1"]
  
}

resource "local_file" "dev" {
  filename = var.file_list[1]
  content = var.content_map["content2"]
}

output "developer" {
    value = var.developer
  
}
output "aws_ec2_info" {
    value = var.aws_ec2_session
  
}

locals {
  instances = {"rajat":"ami_id1", "pandit":"ami_id2", "kumar":"ami_id3"}
}

resource "aws_instance" "aws_ec2_info" {
    for_each = local.instances
    ami = "each.value"
    instance_type = "t2.micro"
    tags = {
      Name = each.value
    }
    }

  
