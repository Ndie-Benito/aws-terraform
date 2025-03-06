variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true  # Marque la variable comme sensible (Terraform la masquera dans les logs)
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true  # Marque la variable comme sensible
}

provider "aws" {
  region     = "us-west-2"  # Remplacez par votre région AWS
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
