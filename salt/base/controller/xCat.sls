xCAT:
  pkg.installed:
    - required_in:
      - file: /etc/yum.repos.d/xCat-Core.repo
      - file: /etc/yum.repos.d/xCat-dep.repo

/etc/yum.repos.d/xCat-Core.repo:
  file.managed:
    - seconds: 600
    - user: root
    - group: root
    - mode: 644
    - source: http://sourceforge.net/projects/xcat/files/yum/2.8/xcat-core/xCAT-core.repo
    - source_hash: md5=0efa3f94611e58b996a1c1931f31812e

/etc/yum.repos.d/xCat-dep.repo:
  file.managed:
    - seconds: 600
    - user: root
    - group: root
    - mode: 644
    - source: http://sourceforge.net/projects/xcat/files/yum/xcat-dep/rh6/x86_64/xCAT-dep.repo
    - source_hash: md5=45edbc8c0248d1f67ab1b8ea9707436b

xcatd:
  service:
    - running
    - enable: True

/opt/xcat/sbin/nodeadd node001-node004 groups=compute &> /dev/null:
  cmd.run
/opt/xcat/sbin/makehosts:
  cmd.run
/opt/xcat/sbin/makedhcp -n:
  cmd.run
/opt/xcat/sbin/makedhcp -a:
  cmd.run

dhcp:
  pkg.installed

dhcpd:
  service:
    - running
    - enable: True
    - reload: True
    - watch:
      - file: /etc/dhcp/dhcpd.conf
  file.exists:
    - name: /etc/dhcp/dhcpd.conf
