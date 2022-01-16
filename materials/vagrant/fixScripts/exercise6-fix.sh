#!/bin/bash
#add fix to exercise6-fix here

ARGS=("$@")
dstFolder=${ARGS[-1]}
#drop this arg from the array
unset ARGS[${#ARGS[@]}-1]

if [ "$HOSTNAME" = server1 ]; then
        dstServer="server2"
else
        dstServer="server1"
fi
#scp ${ARGS[0]} ${dstServer}:${dstFolder}

transferSize=0

for i in "${ARGS[@]}"
do
        scp $i ${dstServer}:${dstFolder}
        fileSize=$(stat -c "%s" $i)
        transferSize="$((transferSize + fileSize))"
done

echo ${transferSize}