
data "aws_ami" "ami_info" {

    most_recent = true
    owners = ["655431895664"]

    filter {
        name   = "name"
        values = ["bns"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_ami" "nexus_ami_info" {

    most_recent = true
    #owners = ["679593333241"]
    owners      = ["amazon"]

    filter {
        name   = "name"
        #values = ["SolveDevOps-Nexus-Server-Ubuntu24.04-20260420-*"]
         # This is the standard, free Amazon Linux 2023 AMI
    values = ["al2023-ami-*-kernel-6.1-x86_64"] 
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}
