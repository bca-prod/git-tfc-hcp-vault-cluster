resource "hcp_hvn" "hcp_aws_vault_hvn" {
  hvn_id         = var.hvn_id
  cloud_provider = var.cloud_provider
  region         = var.region
}

resource "hcp_vault_cluster" "hcp_aws_vault_cluster" {
  cluster_id      = var.cluster_id
  hvn_id          = hcp_hvn.hcp_aws_vault_hvn.hvn_id
  tier            = var.tier
  public_endpoint = true
}