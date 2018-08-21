cloud_vpn
=========

This Ansible Network role provides functions to manage IPSEC VPN tunnels.

The functions included allow to:
* Configure IPSEC in multiple networking platforms and VPNaaS providers.
* Provision networking appliances in public and private
  cloud providers.

The providers for managing VPN configurations and provisioners to provision
instance based routers are kept in separate roles and need to be installed
upfront to be used by cloud_vpn.

## Supported cloud providers

* AWS
* Azure
* OpenStack

## Supported VPN endpoints

* AWS VPN
* VyOS
* Cisco CSR
* RHEL/CentOS

## Requirements

* Ansible 2.6 or later
* [requirements.txt](requirements.txt) packages

## Installation

`ansible-galaxy install ansible-network.cloud_vpn`

## Functions

This section provides a list of the available functions that are included
in this role.

Please see the documentation link for each function for details on how to use
the function in an Ansible playbook.

* create_vpn [[docs]](docs/create_vpn.md) [[source]](tasks/create_vpn.yaml)
* delete_vpn [[docs]](docs/delete_vpn.md) [[source]](tasks/delete_vpn.yaml)

## License

GPLv3

## Author information

Ricardo Carrillo Cruz (rcarrillocruz)
