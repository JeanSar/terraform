resource "openstack_networking_network_v2" "network-asbd-squeeze" {
  name           = "network-asbd-squeeze"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "asbd-subnet-front" {
  network_id = "${openstack_networking_network_v2.network_1.id}"
  name       = "asbd-subnet-front"
  cidr       = "10.245.199.0/24"
  dns_nameservers = ["10.10.10.10" ,"10.10.10.11"]
  allocation_pool {
    start = "10.245.199.100"
    end   = "10.245.199.100"
  }
}