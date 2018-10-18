# Create VPN

The `create_vpn` function allows the operator to create an IPSEC VPN
between two peers.
This function can either configure a VPN against two peers that are already
provisioned or they can also be provisioned dynamically.

## Create IPSEC VPN between an on-premise VyOS device and AWS VPN

```yaml
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_psk: mypsksecret
    cloud_vpn_responder_provider_role: ansible-network.aws
    cloud_vpn_responder_provider: aws_vpn
    cloud_vpn_responder_provisioner_role: ansible-network.aws
    cloud_vpn_responder_provisioner: aws_vpn
    cloud_vpn_responder_aws_access_key: myaswaccesskey
    cloud_vpn_responder_aws_secret_key: myawssecretkey
    cloud_vpn_responder_aws_region: us-east-2
    cloud_vpn_initiator_provider_role: ansible-network.vyos
    cloud_vpn_initiator_provider: vyos
    cloud_vpn_initiator_public_ip: 18.191.132.220
    cloud_vpn_initiator_cidr: 192.168.0.0/24
    cloud_vpn_initiator_mgmt_ip: 18.191.132.220
    cloud_vpn_initiator_outside_interface: eth0
    cloud_vpn_initiator_private_ip: 192.168.0.155
    cloud_vpn_initiator_user: vyos
    cloud_vpn_initiator_ssh_private_key_file: /home/ricky/.ssh/aws.pem

  tasks:
    - include_role:
        name: ansible-network.cloud_vpn
```

## Create IPSEC VPN between a dynamically provisioned AWS VyOS VM and AWS VPN

```yaml
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_psk: mypsksecret
    cloud_vpn_responder_provider_role: ansible-network.aws
    cloud_vpn_responder_provider: aws_vpn
    cloud_vpn_responder_provisioner_role: ansible-network.aws
    cloud_vpn_responder_provisioner: aws_vpn
    cloud_vpn_responder_aws_access_key: myaswaccesskey
    cloud_vpn_responder_aws_secret_key: myawssecretkey
    cloud_vpn_responder_aws_region: us-east-2
    cloud_vpn_initiator_provider_role: ansible-network.vyos
    cloud_vpn_initiator_provider: vyos
    cloud_vpn_initiator_provisioner_role: ansible-network.aws
    cloud_vpn_initiator_provisioner: aws
    cloud_vpn_initiator_instance_size: t2.micro
    cloud_vpn_initiator_vpc_cidr: 192.168.0.0/16
    cloud_vpn_initiator_cidr: 192.168.0.0/24
    cloud_vpn_initiator_outside_interface: eth0
    cloud_vpn_initiator_private_ip: 192.168.0.145
    cloud_vpn_initiator_user: vyos
    cloud_vpn_initiator_ssh_private_key_file: /home/ricky/.ssh/aws.pem
    cloud_vpn_initiator_key_name: aws
    cloud_vpn_initiator_image_id: ami-07391762
    cloud_vpn_initiator_aws_access_key: myaswaccesskey
    cloud_vpn_initiator_aws_secret_key: myawssecretkey
    cloud_vpn_initiator_aws_region: us-east-2

  tasks:
    - include_role:
        name: ansible-network.cloud_vpn
```

## Create IPSEC VPN between an on-premise CSR device and AWS VPN

```yaml
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_psk: mypsksecret
    cloud_vpn_responder_provider_role: ansible-network.aws
    cloud_vpn_responder_provider: aws_vpn
    cloud_vpn_responder_provisioner_role: ansible-network.aws
    cloud_vpn_responder_provisioner: aws_vpn
    cloud_vpn_responder_aws_access_key: myaswaccesskey
    cloud_vpn_responder_aws_secret_key: myawssecretkey
    cloud_vpn_responder_aws_region: us-east-2
    cloud_vpn_initiator_provider_role: ansible-network.cisco_ios
    cloud_vpn_initiator_provider: csr
    cloud_vpn_initiator_public_ip: 18.191.154.71
    cloud_vpn_initiator_cidr: 192.168.0.0/24
    cloud_vpn_initiator_mgmt_ip: 18.191.154.71
    cloud_vpn_initiator_user: ec2-user
    cloud_vpn_initiator_ssh_private_key_file: /home/ricky/.ssh/aws.pem
    cloud_vpn_initiator_aws_access_key: myaswaccesskey
    cloud_vpn_initiator_aws_secret_key: myawssecretkey
    cloud_vpn_initiator_aws_region: us-east-2

  tasks:
    - include_role:
        name: ansible-network.cloud_vpn
```

## Create IPSEC VPN between a dynamically provisioned AWS CSR VM and AWS VPN

```yaml
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_psk: mypsksecret
    cloud_vpn_responder_provider_role: ansible-network.aws
    cloud_vpn_responder_provider: aws_vpn
    cloud_vpn_responder_provisioner_role: ansible-network.aws
    cloud_vpn_respnoder_provisioner: aws_vpn
    cloud_vpn_responder_aws_access_key: myaswaccesskey
    cloud_vpn_responder_aws_secret_key: myawssecretkey
    cloud_vpn_responder_aws_region: us-east-2
    cloud_vpn_initiator_key_name: aws
    cloud_vpn_initiator_provider_role: ansible-network.cisco_ios
    cloud_vpn_initiator_provider: csr
    cloud_vpn_initiator_provisioner_role: ansible-network.aws
    cloud_vpn_initiator_provisioner: aws
    cloud_vpn_initiator_instance_size: c4.large
    cloud_vpn_initiator_vpc_cidr: 192.168.0.0/16
    cloud_vpn_initiator_cidr: 192.168.0.0/24
    cloud_vpn_initiator_outside_interface: GigabitEthernet1
    cloud_vpn_initiator_user: ec2-user
    cloud_vpn_initiator_ssh_private_key_file: /home/ricky/.ssh/aws.pem
    cloud_vpn_initiator_image_id: ami-e7704f82
    cloud_vpn_initiator_aws_access_key: myaswaccesskey
    cloud_vpn_initiator_aws_secret_key: myawssecretkey
    cloud_vpn_initiator_aws_region: us-east-2

  tasks:
    - include_role:
        name: ansible-network.cloud_vpn
```

## Arguments

[Common arguments docs](common_arguments.md)

[Network appliance providers arguments](network_appliance_providers_arguments.md)

[Cloud providers arguments](cloud_providers_arguments.md)

[AWS specific arguments](aws_providers_arguments.md)

[Azure specific arguments](azure_providers_arguments.md)

[OpenStack specific arguments](openstack_providers_arguments.md)
