/etc/sysconfig/network:
  file.managed:
    - contents: |
        ## Managed by salt : do not edit by hand ##
        NETWORKING=yes
        HOSTNAME={{pillar['master.controller']}}.{{pillar['domain.name']}}
        ## Any changes to this file will be overwritten ##

/etc/hosts:
  file.managed:
    - contents: |
        ## Managed by salt : do not edit by hand ##
        127.0.0.1 localhost localhost.localdomain {{pillar['master.controller']}} {{pillar['master.controller']}}.{{pillar['domain.name']}}
        ## Any changes to this file will be overwritten ##
