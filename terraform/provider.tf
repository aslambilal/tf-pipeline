provider "google" {
  project = var.project_id
  region  = var.regions[0]
  version = "3.31"
}

provider "google-beta" {
  project = var.project_id
  region  = var.regions[0]
  version = "3.31"
}

terraform {
  required_version = "0.12.9"

  backend "gcs" {
    bucket = "123345-tf-dev-tfstate"
    prefix = "ops-bilal-aslam"
  }
}
