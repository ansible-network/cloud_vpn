# Arguments

## cloud_vpn_name

This value sets the name of the IPSEC tunnel. It is used to namespace the resources and
configuration items created.

## cloud_vpn_psk

This value sets the PSK secret.

This value is *required*.

## cloud_vpn_routing

This value sets the routing type for the IPSEC tunnel.

Valid choices are:

* static
* bgp

It defaults to `static`.

## cloud_vpn_initiator_provider_role

This value sets the initiator provider name, in case the provider sits in an external role.

## cloud_vpn_initiator_provider

This value sets the initiator provider type.

Valid choices are:

* csr
* vyos
* aws_csr
* aws_vyos
* openstack_vyos
* azure_csr

## cloud_vpn_initiator_cidr

This value sets the CIDR of the initiator.

## cloud_vpn_initiator_bgp_asn

This value sets the initiator BGP ASN.

## cloud_vpn_responder_provider_role

This value sets the initiator provider name, in case the provider sits in an external role.

## cloud_vpn_responder_provider

This value sets the responder provider type.

Valid choices are:

* csr
* vyos
* aws_vpn
* aws_csr
* aws_vyos
* openstack_vyos
* azure_csr

## cloud_vpn_responder_cidr

This value sets the CIDR of the responder.

## cloud_vpn_responder_bgp_asn

This value sets the responder BGP ASN.
