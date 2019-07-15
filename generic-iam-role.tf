

data "aws_iam_policy_document" "generic_access_document" {
  
  statement {
    actions = [
      "s3:*",
      "ec2:*",
    ]

    resources = [
      "arn:aws:s3:::*",
      "arn:aws:ec2:::*",
    ]
  }

}


resource "aws_iam_role" "general_access" {
  name = "${var.profile_name}"
  assume_role_policy = "${data.aws_iam_policy_document.generic_access_document.json}"

  tags {
    Owner = "${var.owner}"
  }
}

resource "aws_iam_instance_profile" "general_access_profile" {
  name = "${var.profile_name}"
  role = "${aws_iam_role.general_access.name}"
}
