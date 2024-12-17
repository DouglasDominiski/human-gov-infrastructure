output "state_infraestructure_outputs" {
  value = {
    for x, y in module.aws_humangov_intraestructure :
    x => {
      ec2_public_dns = y.state_ec2_public_dns
      dynamodb       = y.state_dynamodb_table
      s3_bucket      = y.state_s3_bucket
    }
  }

}