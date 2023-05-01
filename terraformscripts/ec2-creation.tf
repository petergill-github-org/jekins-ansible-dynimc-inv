provider "aws"{
  region = "eu-west-2"
}

resource "aws_instance" "AWSInstatance"{
	count = "3"
	ami = "ami-08d9bb4bfe39be5c2"
	instance_type = "t2.micro"
	key_name = "devOps"
	security_groups = ["launch-wizard-2"]
	tags = {
	Name = "tomcatservers"
	}
}


