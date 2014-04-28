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



/opt/xcat/bin/chdef -t site master="{{ salt['pillar.get']('xcat.master:master.ip')}}":
  cmd.run
/opt/xcat/bin/chdef -t site domain="{{ salt['pillar.get']('xcat.master:domain')}}":
  cmd.run
/opt/xcat/bin/chdef -t site timezone="{{ salt['pillar.get']('xcat.master:timezone')}}":
  cmd.run
/opt/xcat/bin/chdef -t site nameservers="{{ salt['pillar.get']('xcat.master:nameservers')}}":
  cmd.run
/opt/xcat/bin/chdef -t site forwarders="{{ salt['pillar.get']('xcat.master:forwarders')}}":
  cmd.run