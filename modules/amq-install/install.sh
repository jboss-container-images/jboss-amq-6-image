#!/bin/sh
# Installs the AMQ distribution into the filesystem.
set -e

SOURCES_DIR=/tmp/artifacts/
DISTRIBUTION_VERSION="jboss-a-mq-6.3.0.redhat-371"
ACTIVEMQ_VERSION="apache-activemq-5.11.0.redhat-630371"

unzip -q "$SOURCES_DIR/${DISTRIBUTION_VERSION}.zip"

pushd $DISTRIBUTION_VERSION/extras > /dev/null
  unzip -q "${ACTIVEMQ_VERSION}-bin.zip"
  mv $ACTIVEMQ_VERSION $AMQ_HOME
popd > /dev/null

rm -rf $DISTRIBUTION_VERSION
