#!/bin/bash

REGION=`ec2metadata | grep -a availability-zone | awk '{print $2}'`
HOSTNAME=`hostname`.$REGION.prfct.co
echo $HOSTNAME >> /tmp/postfix.hostname
debconf-set-selections <<< "postfix postfix/mailname string $HOSTNAME"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get install -y postfix
