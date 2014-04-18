#!/bin/bash


if [ -f /etc/debian_version ]; then
  release="redhat"
fi

echo $release

