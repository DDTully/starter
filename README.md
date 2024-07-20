```
# Install dependencies
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install -y make gcc fd-find unzip git xclip neovim python3 python3-venv python3-pip nodejs npm cargo cmake
sudo apt install -y wget apt-transport-https software-properties-common curl
sudo npm cache clean --force
sudo npm install -g n
sudo n latest
source ~/.bashrc
sudo npm install -g yarn
sudo npm install -g neovim
python3 -m pip install --user --upgrade pynvim

# Install Ripgrep 
wget https://github.com/BurntSushi/ripgrep/releases/download/14.0.3/ripgrep_14.0.3-1_amd64.deb
sudo dpkg -i ripgrep_14.0.3-1_amd64.deb
rm ripgrep_14.0.3-1_amd64.deb

# Install Powershell and PSScriptAnalyzer
source /etc/os-release
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y powershell
pwsh -command Install-Module PSScriptAnalyzer -force

# Install Nerdfont
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/DroidSansMono.zip
unzip -o DroidSansMono.zip -d ~/.fonts/
fc-cache -fv
rm DroidSansMono.zip

# Install git-credential-manager
wget https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.5.1/gcm-linux_amd64.2.5.1.deb
sudo dpkg -i gcm-linux_amd64.2.5.1.deb
rm gcm-linux_amd64.2.5.1.deb
git-credential-manager configure
echo "export GCM_CREDENTIAL_STORE=cache" | tee -a ~/.bashrc
source ~/.bashrc

# Install Lazygit 
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm ~/lazygit*

# Install Go
wget https://go.dev/dl/go1.22.5.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.5.linux-amd64.tar.gz
rm go1.22.5.linux-amd64.tar.gz
echo "export PATH=\$PATH:/usr/local/go/bin" | tee -a ~/.bashrc
source ~/.bashrc

# Clone config and start nvim
git clone https://github.com/DDTully/starter.git ~/.config/nvim
nvim

```
