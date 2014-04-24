#!/bin/bash

if [ -f /etc/redhat-release ]; then
  release="redhat"
fi

clean(){
    
	rpm -e http://ftp.linux.ncsu.edu/pub/epel/6/i386/epel-release-6-8.noarch.rpm
    yum remove salt-master
    yum remove salt-minion
}

salt_setup(){
    
	rpm -Uvh http://ftp.linux.ncsu.edu/pub/epel/6/i386/epel-release-6-8.noarch.rpm
    yum reinstall -y salt-master
    yum reinstall -y salt-minion

	cat <<-EOF > /etc/salt/minion
	master: $(hostname)
	id: $(hostname)
	EOF

	salt-key --gen-keys=/tmp/$(hostname)

	rm -rf /etc/salt/pki/minion/*

	cp /tmp/$(hostname).pub /etc/salt/pki/master/minions/$(hostname)

	cp /tmp/$(hostname).pub /etc/salt/pki/minion/minion.pub
    cp /tmp/$(hostname).pem /etc/salt/pki/minion/minion.pem

	rm -rf /tmp/$(hostname).*

	chkconfig salt-master on
	service salt-master restart

    chkconfig salt-minion on
    service salt-minion restart
}

salt_setup
