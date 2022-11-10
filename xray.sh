#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8dec46ac-dc08-400a-9739-f2a1b49e8dfe"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

