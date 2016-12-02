#!/bin/bash

depto="lopes"
ip=`cat /etc/servidor`

export PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin

# Sincronismo de scripts
rsync -azv --temp-dir=/tmp --timeout=180 --copy-links --delete-after --password-file=/etc/atualiza.update rsync://suporte@131.255.239.38:875/lopes/ /home/megacontent




        rsync -avz --delete-after /home/megacontent/thumb/ /usr/local/bin/MegaContentAPI/thumb/
        rsync -avz --delete-after /home/megacontent/upload/ /usr/local/bin/MegaContentAPI/upload/

        mongorestore /home/megacontent/db/lopes_manager

