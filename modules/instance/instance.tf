resource "aws_launch_configuration" "apache_server" {
  image_id = var.ami_id
  instance_type = var.instance_type
  associate_public_ip_address = true
  security_groups = [var.security_group_id]
  user_data = "${file("./scripts/cloud_init.sh")}"
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "devops-case-asg" {
  desired_capacity     = 2
  max_size             = 2
  min_size             = 2
  health_check_type    = "EC2"
  health_check_grace_period = 300

  launch_configuration = aws_launch_configuration.apache_server.id
  vpc_zone_identifier  = tolist(var.subnet_ids)

  tag {
    key                 = "Name"
    value               = "case-httpd-instance"
    propagate_at_launch = true
  }
}