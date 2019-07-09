

// resource "aws_s3_bucket" "b" {
//   bucket = "${var.name}"
//   acl    = "${var.base_acl}"

//   tags = {
//     Name        = "${var.prefix}${var.owner}"
//     Environment = "dev"
//   }
// }

resource "aws_iam_role" "test_role" {
  name = "${var.name}"

  assume_role_policy = <<EOF${var.policy-document}EOF

  tags = {
    Name        = "${var.prefix}${var.owner}"
    Environment = "dev"
  }
}
