# Delete VPN

The `delete_vpn` function allows the operator to delete an IPSEC VPN previously
created by the `created_vpn` function.

## Delete IPSEC VPN between AWS VyOS VM and AWS VPN by using state variable

```yaml
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_name: aws-vyos-to-aws-vpn
    cloud_vpn_state: absent
    cloud_vpn_responder_provider: aws_vpn
    cloud_vpn_responder_aws_access_key: myaswaccesskey
    cloud_vpn_responder_aws_secret_key: myawssecretkey
    cloud_vpn_responder_aws_region: us-east-2
    cloud_vpn_initiator_provider: aws_vyos
    cloud_vpn_initiator_aws_access_key: myaswaccesskey
    cloud_vpn_initiator_aws_secret_key: myawssecretkey
    cloud_vpn_initiator_aws_region: us-east-2

  tasks:
    - include_role:
        name: cloud-vpn
```

## Delete IPSEC VPN between AWS VyOS VM and AWS VPN by using tasks

```yaml
- hosts: localhost
  connection: local
  gather_facts: no

  vars:
    cloud_vpn_name: aws-vyos-to-aws-vpn
    cloud_vpn_responder_provider: aws_vpn
    cloud_vpn_responder_aws_access_key: myaswaccesskey
    cloud_vpn_responder_aws_secret_key: myawssecretkey
    cloud_vpn_responder_aws_region: us-east-2
    cloud_vpn_initiator_provider: aws_vyos
    cloud_vpn_initiator_aws_access_key: myaswaccesskey
    cloud_vpn_initiator_aws_secret_key: myawssecretkey
    cloud_vpn_initiator_aws_region: us-east-2

  tasks:
    - include_role:
        name: cloud-vpn
        tasks_from: delete_vpn
```
