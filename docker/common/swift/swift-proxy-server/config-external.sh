#!/bin/bash
SOURCE="/opt/kolla/swift-proxy-server/swift.conf"
TARGET="/etc/swift/swift.conf"
OWNER="swift"

if [[ -f "$SOURCE" ]]; then
    cp $SOURCE $TARGET
    chown ${OWNER}: $TARGET
    chmod 0640 $TARGET
fi
