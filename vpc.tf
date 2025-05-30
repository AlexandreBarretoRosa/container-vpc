# Validation rules for VPC configuration:
# - CIDR block must be valid IPv4 range
# - DNS support and hostnames should be enabled for proper functionality
# - Tags should include Name tag for identification
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.project_name
  }

  # Add validation for CIDR block
  lifecycle {
    precondition {
      condition     = can(cidrhost(var.cidr_block, 0))
      error_message = "VPC CIDR block must be a valid IPv4 CIDR range."
    }
  }
}


