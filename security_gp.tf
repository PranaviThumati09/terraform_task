resource "aws_security_group" "elb-sg" {
    name = "elb-sg"
    #incoming traffic
    ingress {
        from_port   = 22
        to_port     = 22
        protocal    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port   = 80
        to_port     = 80
        protocal    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    #outgoing traffic
    egress {
        from_port   = 0
        to_port     = "-1"
        protocal    = "0"
        cidr_blocks = ["0.0.0.0/0"]  
    }
}