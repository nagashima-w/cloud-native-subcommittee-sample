## GKE cluster
resource "google_container_cluster" "cluster" {
  name                     = "sample-cluster"
  location                 = var.DEFAULT_REGION
  remove_default_node_pool = true
  initial_node_count       = 1
  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

}

## GKE node pool
resource "google_container_node_pool" "nodepool" {
  name       = "sample-nodepool"
  location   = var.DEFAULT_REGION
  cluster    = google_container_cluster.cluster.name
  node_count = 1
  node_config {
    preemptible  = true
    machine_type = "e2-standard-2"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
  timeouts {
    create = "30m"
    update = "30m"
  }
}
