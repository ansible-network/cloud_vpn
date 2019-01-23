=========================
Ansible Network cloud_vpn
=========================

.. _Ansible Network cloud_vpn_*working-copy*:

v2.7.0
==============

.. _Ansible Network cloud_vpn_*working-copy*_Major Changes:

Major Changes
-------------

- Ansible 2.7 release of the ``cloud_vpn`` Ansible role.


.. _Ansible Network cloud_vpn_*working-copy*_Minor Changes:

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

