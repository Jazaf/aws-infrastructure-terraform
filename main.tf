prvider "aws" {
    region = "me-south-1" #هنا حطيت منطقة البحرين استبدلها بالمنطقة اللي تبيها 
    access-key = var.aws_access_key
    secret_Key = var.aws_secret_key
}

resource "aws_instance" "my_server" {
    ami = "ami-0c56887766576879" #  استبدل بمعرف صورة AMI ولابد ان تكون متوافقة مع المنطقة التي اخترتهاالتي تريدها 
    instance_type = "t2.micro"
    key_name = var.key_name
   
    tags = {
   
    Name ="My-Server-with-Terraform"
    
    }
}

output "instance_id" {

    value = aws_instance.my_server.id

}

output "public_ip" {
    
    value = aws_intance.my_server.public_ip

}
