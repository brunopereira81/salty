base:
  {{pillar['master.controller']}}:
    - controller.network
    - controller.ntp
    - controller.xCat
    - storage.nfs
