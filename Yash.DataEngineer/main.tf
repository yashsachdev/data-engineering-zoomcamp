terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file(var.gcp_credentials)
  project     = var.project
  region      = var.region
}

resource "google_storage_bucket" "data-lake-bucket" {
  name          = "nyc-data-5677"
  location      = "asia-south1"

  # Optional, but recommended settings:
  storage_class = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30  // days
    }
  }

  force_destroy = true
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id = "nyc_5677"
  project    = "dtc-2025"
  location   = "asia-south1"
}