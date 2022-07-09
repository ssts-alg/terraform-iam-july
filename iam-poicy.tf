# resource "aws_iam_policy" "s3_policy" {
#   name        = "icici-s3_policy"
#   description = "A test policy"
#
#   policy = <<EOF
#   {
#     "Version": "2012-10-17",
#     "Statement": [
#     {
#       "Action": [
#         "s3:GetObject",
#         "s3:ListBucket"
#       ],
#       "Effect": "Allow",
#       "Resource": "arn:aws:s3:::terraform-tfstatefile-380377972418"
#     },
#     {
#       "Action": "s3:*",
#       "Effect": "Allow",
#       "Resource": "arn:aws:s3:::sstech-380377972418"
#     }
#     ]
#   }
# EOF
# }
