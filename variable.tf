variable "filename" {
    default = "/mnt/e/demo/terraform/deve.txt"
}


variable "content" {
    default = "good luck variable content"
  
}

variable "developer" {}


variable "content_map" {
    type = map
    default = {
        "content1" = "good luck variable content1"
         "content2" = "good luck variable content2"
    }
  
}
variable "file_list" {
    type =  list 
    default = ["/mnt/e/demo/terraform/file_1.txt","/mnt/e/demo/terraform/file_2.txt"]
  
}

variable "aws_ec2_session" {
    type = object ({
      name = string
      instance_id = number
      keys = list(string)
      ami = string
    })
  
  default = {
    name = "ec2_session"
    instance_id = 4
    keys = ["key1.pem", "key2.pem"]
    ami = "ubuntu"
  }
}