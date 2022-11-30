terraform {
  backend "gcs" {
    bucket  = ""
    prefix  = ""
  }
}

variable "location" {
  description = "The bucket location"
  default = "REPLACE THIS VALUE WITH THE REGION YOU WANT"
}
variable "project" {
  description = "The GCP project ID"
  default = "REPLACE THIS VALUE WITH THE YOU PROJECT ID"
}

resource "google_storage_bucket" "test-bucket" {
  project = var.project
  name   = "test-bucket-${var.project}"
  location = var.location
}
