nfs-utils:
  pkg.installed

nfs:
  service.running:
    - require:
      - pkg: nfs-utils
#      - watch:
#        - file: /etc/exports

exports:
  file.blockreplace:
    - name: /etc/exports
    - marker_start: "# BLOCK TOP : salt managed zone : do not edit"
    - marker_end: "# BLOCK BOTTOM : end of salt managed zone --"
    - content: '/install *(rw,no_root_squash,sync,no_subtree_check)'
    - show_changes: True
    - append_if_not_found: True
