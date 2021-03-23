module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~>3.2"

  project_id              = var.project_id
  network_name            = "tf-net"
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = "false"

  subnets = [
    {
      subnet_name           = "snet01"
      subnet_ip             = "10.0.0.0/24"
      subnet_region         = var.regions[0]
      subnet_private_access = "true"
      subnet_flow_logs      = "false"
    }
  ]
}
