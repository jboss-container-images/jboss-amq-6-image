#!/bin/sh
set -e

chmod 0755 $AMQ_HOME
chmod 0755 $AMQ_HOME/bin/activemq
chown -R jboss:jboss $AMQ_HOME
