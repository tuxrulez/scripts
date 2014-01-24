#!/bin/bash

depto="ti"
ip="10.0.1.226"

export PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin

# Sincronismo de scripts
rsync -azv --temp-dir=/tmp --timeout=180 --copy-links --delete-after --password-file=/etc/ti.update rsync://$depto@$ip:/$depto/scripts/ /usr/local/scripts 2>&1 | grep -qe 'atualiza.sh'

if [ $? -eq 0 -a -x /usr/local/scripts/atualiza.sh ]; then
    /usr/local/scripts/atualiza.sh
fi
