provider "aws" { 
     region = "us-east-2"
    }


resource "aws_instance" "jenkins_master" {
    ami = "ami-25615740"
    instance_type = "t2.micro"

    tags {
        Name = "jenkins_master"
        role = "jenkins_master"
    }
}
