#!/bin/sh
# V2Ray new configuration
cat <<-EOF > /etc/v2ray/config.json
{
    "inbounds": [
        {
            "port": 8080,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "ac7508a0-4bb4-4ba1-b30e-cc3b7df6558e",
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
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
