module "terraform_backend_bucket" {
  source = "/Users/Maninder/Personel/workspace/terraform/modules/aws/s3-bucket"

  bucket = "${var.region_id}-terraform-statefile"
  acl    = "private"

  versioning = {
    enabled = true
  }

}

module "terraform_lock_table" {
source  = "/Users/Maninder/Personel/workspace/terraform/modules/aws/dynamodb-table"

   name    = "${var.region_id}-terraform_locktable"
   hash_key = "LockID"

     attributes = [
    {
      name = "LockID"
      type = "S"
    }
     ]

}
