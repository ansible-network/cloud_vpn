cloud_vpn
=========

This Ansible Network role provides functions to manage IPSEC VPN tunnels.

The functions included allow to:
* Configure IPSEC in multiple networking platforms and VPNaaS providers.
* Provision networking appliances in public and private
  cloud providers.

The providers for managing VPN configurations and provisioners to provision
instance based routers are kept in separate roles and need to be installed
upfront to be used by cloud_vpn. Check it out links below.

## Supported cloud providers

* [AWS](https://github.com/ansible-network/aws)
* [AWS VPN](https://github.com/ansible-network/aws)
* [Azure](https://github.com/ansible-network/azure)
* [OpenStack](https://github.com/ansible-network/openstack)

## Supported VPN endpoints

* [AWS VPN](https://github.com/ansible-network/aws)
* [Azure VPN](https://github.com/ansible-network/azure)
* [VyOS](https://github.com/ansible-network/vyos)
* [Cisco CSR](https://github.com/ansible-network/cisco_ios)
* [RHEL/CentOS](https://github.com/ansible-network/rhel)

## Requirements

* Ansible 2.6 or later
* [requirements.txt](https://github.com/ansible-network/cloud_vpn/blob/devel/requirements.txt) packages

## Installation

`ansible-galaxy install ansible-network.cloud_vpn`

## Functions

This section provides a list of the available functions that are included
in this role.

Please see the documentation link for each function for details on how to use
the function in an Ansible playbook.

* create_vpn [[docs]](https://github.com/ansible-network/cloud_vpn/blob/devel/docs/create_vpn.md)[[source]](https://github.com/ansible-network/cloud_vpn/blob/devel/tasks/create_vpn.yaml)
* delete_vpn [[docs]](https://github.com/ansible-network/cloud_vpn/blob/devel/docs/delete_vpn.md)[[source]](https://github.com/ansible-network/cloud_vpn/blob/devel/tasks/delete_vpn.yaml)

## License

GPLv3

## Author information

Ricardo Carrillo Cruz (rcarrillocruz)
