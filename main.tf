# Configure le fournisseur AWS
provider "aws" {
  region     = "us-west-2"  # Remplacez par la région de votre choix
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}


# Crée un bucket S3
resource "aws_s3_bucket" "my_bucket" {
  count = 5 
  bucket = "my-bucket-${count.index + 1}" 
  tags = {
    Name        = "My Bucket ${count.index + 1}"
    Environment = "production"
  }
}


