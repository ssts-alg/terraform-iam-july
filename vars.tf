variable "policy_list" {
  type    = list(any)
  default = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::380377972418:policy/start_stop", "arn:aws:iam::aws:policy/AWSDirectConnectReadOnlyAccess"]
}

variable "iam_role_name" {}


variable "policy_name" {}
