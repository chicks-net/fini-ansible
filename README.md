# fini-ansible

[FINI](http://www.fini.net/) ansible playbooks

## working roles

* [homes](roles/homes) - setup sysadmin home directories and common files
* [dumpall](roles/dumpall) - dump ansible variable space into `/tmp/amsible.all`
* [app_iperf](roles/app_iperf) - install iperf
* [app_ocs-inventory](roles/app_ocs-inventory) - installs OCS::Inventory
* [app_smokeping](roles/app_smokeping) - install smokeping

## incomplete roles

* [app_nagios-server](roles/app_nagios-server) - install nagios server
* [sys_apache](roles/sys_apache) - install apache httpd

## planned roles

* [sys_nagios-client](roles/sys_nagios-client) - install nagios client
* [sys_bind](roles/sys_bind) - install ISC DHCP
* [app_bugzilla](roles/app_bugzilla) - install bugzilla
* [app_openwebmail](roles/app_openwebmail) - install OpenWebMail
* [sys_postfix](roles/sys_postfix) - install postfix
* [sys_mysql](roles/sys_mysql) - generalizing mysql goodness from [ocs-inventory](roles/ocs-inventory)

## role naming

* `app_*` roles are for things that consume a port (usually 80)
* `sys_*` roles are for things underlying services that either do not consume a port or generally are expected to function in the background and not comsume an entire machine.
* `meta_*` roles are helpful in ansible for gathering information, but don't install software
* this repo does not fully conform to this standard yet (TODO)
