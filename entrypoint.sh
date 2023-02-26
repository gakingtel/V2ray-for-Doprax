#!/bin/sh

sed -i "s#UUID#$UUID#g;s#VMESS_WSPATH#$VMESS_WSPATH#g;s#VLESS_WSPATH#$VLESS_WSPATH#g" /etc/v2ray/config.json
sed -i "s#VMESS_WSPATH#$VMESS_WSPATH#g;s#VLESS_WSPATH#$VLESS_WSPATH#g" /etc/nginx/nginx.conf
# exec "$@"

#while true ;do curl https://xx.xx.repl.co; sleep 300; done &

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
