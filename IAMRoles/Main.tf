terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "regov-hari"

		workspaces {
			name = "regov"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}
