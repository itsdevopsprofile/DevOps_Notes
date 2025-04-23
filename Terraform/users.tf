resource "aws_iam_user" "u1"{
    name = "oggy"
}

resource "aws_iam_user" "u2" {
    name = "jack"
}
resource "aws_iam_user" "u3" {
    name = "bob"
}

resource "aws_iam_group" "g1" {
    name = "cartoon"
}

resource "aws_iam_group_membership" "team" {
   name = "teamup"

   users = [
    aws_iam_user.u1.name,
    aws_iam_user.u2.name,
    aws_iam_user.u3.name
   ]

   group = aws_iam_group.g1.name
  
}
