#!/bin/sh
# V2Ray new configuration
cat <<-EOF > /etc/xray/config.json
{
    "inbounds": [
        {
            "port": 3333,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "4e87136b-ee03-4c23-b567-48c651cf3707",
                        "security": "chacha20-poly1305",
                        "alterId": 0
                    }
                ],
                "disableInsecureEncryption": true
            },
            "streamSettings": {
                "network": "tcp"
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}
EOF
# Run V2Ray
/usr/bin/xray/xray -config=/etc/xray/config.json
