#hostnames
master.controller: borg.queen
nfs.storage: storage01
#xCat
xcat.master:
  master.ip: 10.141.255.254
  domain: cluster
  timezone: Europe/Amsterdam
  nameservers: <xcatmaster>
  forwarders: 8.8.8.8, 8.8.4.4
