#!/bin/bash
SOURCE="/opt/kolla/magnum/magnum-conductor/magnum.conf"
TARGET="/etc/magnum/magnum.conf"
OWNER="magnum"

if [[ -f "$SOURCE" ]]; then
    cp $SOURCE $TARGET
    chown ${OWNER}: $TARGET
    chmod 0644 $TARGET
fi
