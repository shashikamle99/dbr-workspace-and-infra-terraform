

resource "databricks_mws_credentials" "this" {
  provider         = databricks.mws
  account_id       = local.databricks_account_id
  #role_arn         = aws_iam_role.cross_account_role.arn
  credentials_name = "${local.prefix}-creds"
  #depends_on       = [aws_iam_role_policy.this,aws_iam_role.cross_account_role]
#   depends_on = [
#     time_sleep.wait
#   ]
}

# resource "time_sleep" "wait" {
#   depends_on = [
#     aws_iam_role.cross_account_role
#   ]
#   create_duration = "10s"
# }
