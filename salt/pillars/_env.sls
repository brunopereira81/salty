#hostnames, what does what function
master.controller: borg.queen
nfs.storage: storage01
#xCat configuration
xcat.master:
  master.ip: 10.141.255.254
  domain: cluster
  timezone: Europe/Amsterdam
  nameservers: <xcatmaster>
  forwarders: 8.8.8.8, 8.8.4.4
  dhcpinterfaces: eth1
xcat.switches:
  switch.config:
    designation: switch
    snmp.version: 2c
    password: public
    protocol: telnet
  switch01:
    ip: 10.0.0.5
