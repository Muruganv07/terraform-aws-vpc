bucket         = "murugan-terraform-state-2026-abc123"
key            = "dev/terraform.tfstate"
region         = "ap-south-1"
encrypt        = true
dynamodb_table = "terraform-state-lock"
