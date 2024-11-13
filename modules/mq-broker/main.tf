resource "aws_mq_broker" "broker" {
  broker_name = var.broker_name
  engine_type = var.engine_type
  engine_version = var.engine_version
  host_instance_type = var.host_instance_type
  publicly_accessible = false
  subnet_ids = ["subnet-0af1e0663885d426c"]
  security_groups = [aws_security_group.sg.id]

  user {
    username = var.username
    password = var.password
  }

  tags = {
    "Name" = var.broker_name
  }
}


