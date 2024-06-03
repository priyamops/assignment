variable "aws_launch_template_name" {
  type = string
  description = "Name prefix of Launch configuration"
}

variable "aws_launch_template_image" {
  type = string
  description = "Image for Launch configuration"
}

variable "aws_launch_template_instance" {
  type = string
  description = "Instance type for launch configuration"
}

#### Auto scaling configuration ##

variable "aws_autoscaling_group_name" {
  type = string
  description = "Name of the group"
}

variable "aws_autoscaling_group_desired_capacity" {
  type = number
  description = "Desired capacity"
}

variable "aws_autoscaling_group_min_size" {
  type = number
  description = "Minimum number of instance"
}

variable "aws_autoscaling_group_max_size" {
  type = number
  description = "Maximum number of instance"
}