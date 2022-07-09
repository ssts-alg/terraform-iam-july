resource "aws_iam_role" "ec2_role" {
  name = var.iam_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    Name = "icici_ec2_role"
  }
}






resource "aws_iam_role_policy_attachment" "iaiaci-attachement" {
  count      = length(var.policy_list)
  role       = aws_iam_role.ec2_role.name
  policy_arn = element(var.policy_list, count.index)
}


resource "aws_iam_role_policy_attachment" "iaiaci-attachement2" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = aws_iam_policy.example1.arn
}
