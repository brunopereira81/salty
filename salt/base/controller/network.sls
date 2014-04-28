network:
  service.running:
    - watch:
      - file: /etc/sysconfig/network-scripts/ifcfg-eth0
      - file: /etc/sysconfig/network-scripts/ifcfg-eth1


/etc/sysconfig/network-scripts/ifcfg-eth0:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://controller/files/ifcfg-eth0


/etc/sysconfig/network-scripts/ifcfg-eth1:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://controller/files/ifcfg-eth1
