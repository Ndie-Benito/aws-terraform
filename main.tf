/*# Configure le fournisseur AWS
provider "aws" {
  region     = "us-west-2"  # Remplacez par la région de votre choix
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
*/

# Crée un bucket S3
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name  # Utilise la variable pour le nom du bucket
  acl    = "private"       # Définit les permissions du bucket

  tags = {
    Name        = "MonBucket"
    Environment = "Production"
  }
}
/*
# Optionnel : Activer la versioning sur le bucket
resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"  # Active la versioning
  }
}

# Optionnel : Bloquer l'accès public au bucket
resource "aws_s3_bucket_public_access_block" "my_bucket_public_access" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

*/
