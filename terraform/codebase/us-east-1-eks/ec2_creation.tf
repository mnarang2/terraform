module "eks_play_ec2" {
    source = "/Users/Maninder/Personel/workspace/terraform/modules/aws/ec2-instance"

        name = "single-instance"

        ami                    = "ami-08d4ac5b634553e16"
        instance_type          = "t2.micro"
        key_name               = "ec2-test-key"
        monitoring             = true
        vpc_security_group_ids = ["sg-0806ea52971396e93"]
        subnet_id              = "subnet-0191125dbbcae104d"

        tags = {
            Terraform   = "true"
            Environment = "dev"
        }
}