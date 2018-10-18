=======================
Cloud VPN Release Notes
=======================

.. release-notes::
   :unreleased-version-title: In Development

.. _Release Notes_v2.6.3:

v2.6.3
======

New Features
------------

- Decouple provisioners and providers on their own roles, which will be
  available from Galaxy.

Bug Fixes
---------

- Rename meta/main.yaml to meta/main.yml to avoid Galaxy upload issues.

.. _Release Notes_v2.6.0:

v2.6.0
======

New Features
------------

- Initial release of the ``cloud_vpn`` Ansible role. This role provides
  functions to manage IPSEC VPN tunnels.
