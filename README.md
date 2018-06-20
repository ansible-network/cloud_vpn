cloud-vpn
=========

This role allows to create VPN IPSEC site-to-site tunnels between cloud providers and network devices.
It only supports static routing (for now).

Example playbook for VPN between an on-premise VyOS device and AWS VPN
----------------------------------------------------------------------

```
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_psk: mypsksecret
    cloud_vpn_responder_type: aws_vpn
    cloud_vpn_initiator_type: vyos
    cloud_vpn_initiator_ip: 18.191.132.220
    cloud_vpn_initiator_cidr: 192.168.0.0/24
    cloud_vpn_initiator_mgmt_ip: 18.191.132.220
    cloud_vpn_initiator_outside_interface: eth0
    cloud_vpn_initiator_private_ip: 192.168.0.155
    cloud_vpn_initiator_user: vyos
    cloud_vpn_initiator_ssh_private_key_file: /home/ricky/.ssh/aws.pem
    cloud_vpn_aws_region: us-east-2
    cloud_vpn_aws_access_key: myaswaccesskey
    cloud_vpn_aws_secret_key: myawssecretkey

  tasks:
    - include_role:
        name: cloud-vpn
```

Example playbook for VPN between a dynamically provisioned AWS VyOS VM and AWS VPN
----------------------------------------------------------------------------------

```
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_psk: mypsksecret
    cloud_vpn_responder_type: aws_vpn
    cloud_vpn_responder_key_name: aws
    cloud_vpn_initiator_type: aws_vyos
    cloud_vpn_initiator_vpc_cidr: 192.168.0.0/16
    cloud_vpn_initiator_cidr: 192.168.0.0/24
    cloud_vpn_initiator_outside_interface: eth0
    cloud_vpn_initiator_private_ip: 192.168.0.145
    cloud_vpn_initiator_user: vyos
    cloud_vpn_initiator_ssh_private_key_file: /home/ricky/.ssh/aws.pem
    cloud_vpn_aws_region: us-east-2
    cloud_vpn_aws_vyos_image_id: ami-07391762
    cloud_vpn_aws_access_key: myaswaccesskey
    cloud_vpn_aws_secret_key: myawssecretkey

  tasks:
    - include_role:
        name: cloud-vpn
```

Example playbook for VPN between an on-premise CSR device and AWS VPN
---------------------------------------------------------------------

```
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_psk: mypsksecret
    cloud_vpn_responder_type: aws_vpn
    cloud_vpn_initiator_type: ios
    cloud_vpn_initiator_ip: 18.191.154.71
    cloud_vpn_initiator_cidr: 192.168.0.0/24
    cloud_vpn_initiator_mgmt_ip: 18.191.154.71
    cloud_vpn_initiator_user: ec2-user
    cloud_vpn_initiator_ssh_private_key_file: /home/ricky/.ssh/aws.pem
    cloud_vpn_aws_region: us-east-2
    cloud_vpn_aws_access_key: myaswaccesskey
    cloud_vpn_aws_secret_key: myawssecretkey

  tasks:
    - include_role:
        name: cloud-vpn
```

Example playbook for VPN between a dynamically provisioned AWS CSR VM and AWS VPN
---------------------------------------------------------------------------------

```
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_psk: mypsksecret
    cloud_vpn_responder_type: aws_vpn
    cloud_vpn_responder_key_name: aws
    cloud_vpn_initiator_type: aws_ios
    cloud_vpn_initiator_vpc_cidr: 192.168.0.0/16
    cloud_vpn_initiator_cidr: 192.168.0.0/24
    cloud_vpn_initiator_outside_interface: GigabitEthernet1
    cloud_vpn_initiator_user: ec2-user
    cloud_vpn_initiator_ssh_private_key_file: /home/ricky/.ssh/aws.pem
    cloud_vpn_aws_region: us-east-2
    cloud_vpn_aws_ios_image_id: ami-e7704f82
    cloud_vpn_aws_access_key: myaswaccesskey
    cloud_vpn_aws_secret_key: myawssecretkey

  tasks:
    - include_role:
        name: cloud-vpn
```
