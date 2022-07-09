data "aws_iam_policy_document" "example" {
  statement {
    sid = "1"

    actions = [
      "s3:GetObject",
      "s3:ListBucket"
    ]

    resources = [
      "arn:aws:s3:::terraform-tfstatefile-380377972418",
    ]
  }

  statement {
    actions = [
      "s3:*",
    ]

    resources = [
      "arn:aws:s3:::sstech-380377972418",
    ]

  }
}


resource "aws_iam_policy" "example1" {
  name   = var.policy_name
  path   = "/"
  policy = data.aws_iam_policy_document.example.json
}
