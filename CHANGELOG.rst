=========================
Ansible Network cloud_vpn
=========================

.. _Ansible Network cloud_vpn_*working-copy*:

v2.7.1
======

.. _Ansible Network cloud_vpn_v2.7.1_Minor Changes:

Minor Changes
-------------

- Added unconfigure hooks

- Removed autoinstall roles feature, users are expected to have provisioners/providers roles instead ahead of play

- Added post-configure hooks

- Added provisioner facts hooks

- Added ability to consume a list of tunnels configs with cloud_vpn_tunnels


.. _Ansible Network cloud_vpn_v2.7.0:

v2.7.0
======

.. _Ansible Network cloud_vpn_v2.7.0_Major Changes:

Major Changes
-------------

- Ansible 2.7 release of the ``cloud_vpn`` Ansible role.


.. _Ansible Network cloud_vpn_v2.7.0_Minor Changes:

Minor Changes
-------------

- Use include_role defaults_from to load provider defaults

- Add default var for IPSEC mode, to support aggressive mode in providers

- Add logic to install pip requirements

- Add logic to install supported providers and provisioners with Ansible Galaxy CLI


.. _Ansible Network cloud_vpn_v2.6.3:

v2.6.3
======

.. _Ansible Network cloud_vpn_v2.6.3_Minor Changes:

Minor Changes
-------------

- Rename meta/main.yaml to meta/main.yml to avoid Galaxy upload issues.

- Decouple provisioners and providers on their own roles, which will be available from Galaxy.


.. _Ansible Network cloud_vpn_v2.6.0:

v2.6.0
======

.. _Ansible Network cloud_vpn_v2.6.0_Major Changes:

Major Changes
-------------

- Initial release of the ``cloud_vpn`` Ansible role.

- This role provides functions to manage IPSEC VPN tunnels.

