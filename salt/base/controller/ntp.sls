ntp:
  pkg:
    - installed

ntpd:
  service.running:
    - require:
      - pkg: ntp
      - file: /etc/ntp.conf
    - watch:
      - file: /etc/ntp.conf

/etc/ntp.conf:
  file.managed:
    - contents: |
        ## Managed by salt : do not edit by hand ##
        server 127.127.1.0
        fudge 127.127.1.0 stratum 10
        server 0.europe.pool.ntp.org iburst
        server 1.europe.pool.ntp.org iburst
        server 2.europe.pool.ntp.org iburst
        server 3.europe.pool.ntp.org iburst
        driftfile /var/lib/ntp/drift
