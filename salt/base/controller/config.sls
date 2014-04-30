/etc/sysconfig/network:
  file.managed:
    - contents: |
        ## Managed by salt : do not edit by hand ##
        NETWORKING=yes
        HOSTNAME={{pillar['master.controller']}}
        ## Any changes to this file will be overwritten ##

/etc/hosts:
  file.managed:
    - contents: |
        ## Managed by salt : do not edit by hand ##
        127.0.0.1 localhost localhost.localdomain {{pillar['master.controller']}}
        ## Any changes to this file will be overwritten ##
