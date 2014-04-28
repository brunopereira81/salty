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
    - user: root
    - group: root
    - mode: 644
    - source: salt://controller/files/ntp.conf
