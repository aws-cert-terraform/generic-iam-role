
output "iam_profile_name" {
  value = "${aws_iam_role.general_access.name}"
}
