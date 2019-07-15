

data "aws_iam_policy_document" "generic_access_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "general_access" {
  name = "${var.role_name}"
  assume_role_policy = "${data.aws_iam_policy_document.generic_access_policy.json}"
}

resource "aws_iam_instance_profile" "general_access_profile" {
  name = "${aws_iam_role.general_access.name}"
  role = "${aws_iam_role.general_access.name}"
}
