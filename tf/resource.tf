resource "aws_instance" "web" {
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.server_instance_type}"

  tags = {
    Name = "${var.server_tag_name}"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hbm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_db_instance" "default" {
  allocated_storage = "${var.db_allocated_storage}"
  storage_type = "${var.db_storage_type}"
  engine = "${var.db_engine}"
  engine_version = "${var.db_engine_version}"
  instance_class = "${var.db_instance_class}"
  name = "${var.db_database_name}"
  username = "${var.db_database_username}"
  password = "${var.secret_db_database_password}"
  final_snapshot_identifier = "${var.db_snapshot_identifier}"
}
