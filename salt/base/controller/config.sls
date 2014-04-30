/etc/sysconfig/network:
  file.managed:
    - source:
      - salt://controller/files/network

etc/sysconfig/network:
  file.blockreplace:
    - name: /etc/sysconfig/network
    - marker_start: "## Managed by salt : do not edit by hand ##"
    - BOTTOM: "## END"
    - content: |
        NETWORKING=yes
        HOSTNAME={{pillar['master.controller']}}

/etc/hosts:
  file.managed:
    - source: salt://controller/files/hosts
