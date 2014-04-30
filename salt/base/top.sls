base:
  {{pillar['master.controller']}}:
    - controller.config
    - controller.network
    - controller.ntp
    - controller.xCat
