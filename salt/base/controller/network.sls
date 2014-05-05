network:
  service.running

/etc/sysconfig/network-scripts/ifcfg-eth0:
  file.managed:
    - contents: |
        DEVICE=eth0
        ONBOOT=yes
        BOOTPROTO=static
        IPADDR=10.141.255.254
        PREFIX=16

/etc/sysconfig/network-scripts/ifcfg-eth1:
  file.managed:
    - contents: |
        DEVICE=eth1
        ONBOOT=yes
        BOOTPROTO=dhcp
        PEERDNS=no
