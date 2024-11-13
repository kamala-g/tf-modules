resource "aws_security_group" "sg" {
 vpc_id      = "vpc-06e082646d3762ee0"

  ingress {
    from_port   = 61616   
    to_port     = 61616
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 61617   
    to_port     = 61617
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}