provider "google" {
 region = "us-west1"
}

resource goodle_compute_instance "gcp-vm-tf-cloud" {
  name = "tf-cloud-exp"
  zone = "us-west1-a"
  tag = ["testing", "tf-cloud"]
  boot_disk {
    initialize_params {
     image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "/projects/prj-mcafee-poc/global/networks/tf-vpc"
    access_config {
    }
  }
}
