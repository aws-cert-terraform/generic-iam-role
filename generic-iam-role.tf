

data "aws_iam_policy_document" "example" {
  
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

data "aws_iam_policy_document" "instance-assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "general_access" {
  assume_role_policy = "${data.aws_iam_policy_document.instance-assume-role-policy.json}"
}

