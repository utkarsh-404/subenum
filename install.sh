
---

### **install.sh** (Installation Script)
```bash
#!/bin/bash

# Install Dependencies
echo "[+] Installing system packages..."
sudo apt update && sudo apt install -y \
  git python3-pip jq golang npm chromium-browser

# Set Go Environment
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Install Go Tools
echo "[+] Installing Go tools..."
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/tomnomnom/assetfinder@latest
go install github.com/tomnomnom/waybackurls@latest
go install github.com/tomnomnom/httprobe@latest
go install github.com/tomnomnom/unfurl@latest

# Install Python Tools
echo "[+] Installing Python tools..."
sudo pip3 install sublist3r knockpy eyewitness

# Install Sublist3r
git clone https://github.com/aboul3la/Sublist3r.git /tmp/sublist3r
sudo cp /tmp/sublist3r/sublist3r.py /usr/local/bin/sublist3r

# Install EyeWitness (Optional: Already installed via pip)
git clone https://github.com/FortyNorthSecurity/EyeWitness.git /opt/EyeWitness

# Install WhatWeb
sudo gem install whatweb

# Install Subenum Script
echo "[+] Setting up subenum..."
sudo cp subenum /usr/local/bin/
sudo chmod +x /usr/local/bin/subenum

echo "[+] Installation complete! Run 'subenum example.com' to start."
