#!/bin/bash
clear
echo "==================================================================="
echo -e "\e[92m"
echo  "   ____          ____       _                    ";
echo  "  | __ )  __ _  |  _ \ __ _| |_ ___ _ __   __ _  ";
echo  "  |  _ \ / _' | | |_) / _' | __/ _ \ '_ \ / _' | ";
echo  "  | |_) | (_| | |  __/ (_| | ||  __/ | | | (_| | ";
echo  "  |____/ \__, | |_|   \__,_|\__\___|_| |_|\__, | ";
echo  "         |___/                            |___/  ";
echo -e "\e[0m"
echo "===================================================================" 

echo -e '\e[36mGarapan :\e[39m' Loyal Testnet Convert Script by nodeist
echo -e '\e[36mTelegram Group :\e[39m' @bangpateng_group
echo -e '\e[36mTelegram Channel :\e[39m' @bangpateng_airdrop
echo -e '\e[36mYoutube :\e[39m' Bang Pateng
echo -e '\e[36mWebsite :\e[39m' www.bangpatengnode.site
echo "======================================="

sleep 2

LYL_WALLET=wallet
LYL=loyald
LYL_ID=loyal-1
LYL_PORT=56
LYL_FOLDER=.loyal
LYL_FOLDER2=loyal
LYL_VER=v0.25.1
LYL_REPO=https://github.com/LoyalLabs/loyal.git
LYL_GENESIS=https://raw.githubusercontent.com/LoyalLabs/net/main/mainnet/genesis.json
LYL_ADDRBOOK=
LYL_MIN_GAS=0
LYL_DENOM=ulyl
LYL_SEEDS=7490c272d1c9db40b7b9b61b0df3bb4365cb63a6@loyal-seed.netdots.net:26656,b66ecdf36bb19a9af0460b3ae0901aece93ae006@pubnode1.joinloyal.io:26656
LYL_PEERS=

sleep 1

echo "export LYL_WALLET=${LYL_WALLET}" >> $HOME/.bash_profile
echo "export LYL=${LYL}" >> $HOME/.bash_profile
echo "export LYL_ID=${LYL_ID}" >> $HOME/.bash_profile
echo "export LYL_PORT=${LYL_PORT}" >> $HOME/.bash_profile
echo "export LYL_FOLDER=${LYL_FOLDER}" >> $HOME/.bash_profile
echo "export LYL_FOLDER2=${LYL_FOLDER2}" >> $HOME/.bash_profile
echo "export LYL_VER=${LYL_VER}" >> $HOME/.bash_profile
echo "export LYL_REPO=${LYL_REPO}" >> $HOME/.bash_profile
echo "export LYL_GENESIS=${LYL_GENESIS}" >> $HOME/.bash_profile
echo "export LYL_PEERS=${LYL_PEERS}" >> $HOME/.bash_profile
echo "export LYL_SEED=${LYL_SEED}" >> $HOME/.bash_profile
echo "export LYL_MIN_GAS=${LYL_MIN_GAS}" >> $HOME/.bash_profile
echo "export LYL_DENOM=${LYL_DENOM}" >> $HOME/.bash_profile
source $HOME/.bash_profile

sleep 1

if [ ! $LYL_NODENAME ]; then
	read -p "Masukan Nama Node Anda: " LYL_NODENAME
	echo 'export LYL_NODENAME='$LYL_NODENAME >> $HOME/.bash_profile
fi

echo -e "Nama Node: \e[1m\e[32m$LYL_NODENAME\e[0m"
echo -e "Nama Wallet: \e[1m\e[32m$LYL_WALLET\e[0m"
echo -e "Chain ID: \e[1m\e[32m$LYL_ID\e[0m"
echo -e "PORT: \e[1m\e[32m$LYL_PORT\e[0m"
echo '================================================='

sleep 2

echo -e "\e[1m\e[32m1. Update... \e[0m" && sleep 1
sudo apt update && sudo apt upgrade -y

echo -e "\e[1m\e[32m2. Insall Build... \e[0m" && sleep 1
sudo apt install curl tar wget clang pkg-config libssl-dev jq build-essential bsdmainutils git make ncdu gcc git jq chrony liblz4-tool -y

echo -e "\e[1m\e[32m3. Install Go... \e[0m" && sleep 1
ver="1.18.2"
cd $HOME
wget "https://golang.org/dl/go$ver.linux-amd64.tar.gz"
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "go$ver.linux-amd64.tar.gz"
rm "go$ver.linux-amd64.tar.gz"
echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> ~/.bash_profile
source ~/.bash_profile
go version

sleep 1

echo -e "\e[1m\e[32m4. Clone Repo... \e[0m" && sleep 1
cd $HOME
wget https://github.com/LoyalLabs/loyal/releases/download/v0.25.1/loyal_v0.25.1_linux_amd64.tar.gz
tar xzf loyal_v0.25.1_linux_amd64.tar.gz
chmod 775 loyald
sudo mv loyald /usr/local/bin/
sudo rm loyal_v0.25.1_linux_amd64.tar.gz

sleep 1

echo -e "\e[1m\e[32m5. Konfigurasi... \e[0m" && sleep 1
$LYL config chain-id $LYL_ID
$LYL config keyring-backend file
$LYL init $LYL_NODENAME --chain-id $LYL_ID

wget $LYL_GENESIS -O $HOME/$LYL_FOLDER/config/genesis.json
wget $LYL_ADDRBOOK -O $HOME/$LYL_FOLDER/config/addrbook.json

SEEDS="$LYL_SEEDS"
PEERS="$LYL_PEERS"
sed -i -e "s/^seeds *=.*/seeds = \"$SEEDS\"/; s/^persistent_peers *=.*/persistent_peers = \"$PEERS\"/" $HOME/$LYL_FOLDER/config/config.toml

sleep 1

# config pruning
pruning="custom"
pruning_keep_recent="100"
pruning_keep_every="0"
pruning_interval="50"
sed -i -e "s/^pruning *=.*/pruning = \"$pruning\"/" $HOME/$LYL_FOLDER/config/app.toml
sed -i -e "s/^pruning-keep-recent *=.*/pruning-keep-recent = \"$pruning_keep_recent\"/" $HOME/$LYL_FOLDER/config/app.toml
sed -i -e "s/^pruning-keep-every *=.*/pruning-keep-every = \"$pruning_keep_every\"/" $HOME/$LYL_FOLDER/config/app.toml
sed -i -e "s/^pruning-interval *=.*/pruning-interval = \"$pruning_interval\"/" $HOME/$LYL_FOLDER/config/app.toml

sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:2${LYL_PORT}8\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:2${LYL_PORT}7\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:${LYL_PORT}60\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:2${LYL_PORT}6\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":2${LYL_PORT}0\"%" $HOME/$LYL_FOLDER/config/config.toml
sed -i.bak -e "s%^address = \"tcp://0.0.0.0:1317\"%address = \"tcp://0.0.0.0:${LYL_PORT}7\"%; s%^address = \":8080\"%address = \":${LYL_PORT}80\"%; s%^address = \"0.0.0.0:9090\"%address = \"0.0.0.0:${LYL_PORT}90\"%; s%^address = \"0.0.0.0:9091\"%address = \"0.0.0.0:${LYL_PORT}91\"%" $HOME/$LYL_FOLDER/config/app.toml
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:2${LYL_PORT}7\"%" $HOME/$LYL_FOLDER/config/client.toml

sed -i -e "s/prometheus = false/prometheus = true/" $HOME/$LYL_FOLDER/config/config.toml

sed -i -e "s/^minimum-gas-prices *=.*/minimum-gas-prices = \"0.000025$LYL_DENOM\"/" $HOME/$LYL_FOLDER/config/app.toml

indexer="null" && \
sed -i -e "s/^indexer *=.*/indexer = \"$indexer\"/" $HOME/$LYL_FOLDER/config/config.toml

$LYL tendermint unsafe-reset-all --home $HOME/$LYL_FOLDER

echo -e "\e[1m\e[32m6. Mulai Service... \e[0m" && sleep 1
# create service
sudo tee /etc/systemd/system/$LYL.service > /dev/null <<EOF
[Unit]
Description=$LYL
After=network.target
[Service]
Type=simple
User=$USER
ExecStart=$(which $LYL) start
Restart=on-failure
RestartSec=10
LimitNOFILE=65535
[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable $LYL
sudo systemctl restart $LYL

echo '=============== Instalisasi Selesai Bang ==================='
echo -e 'Check Log Node: \e[1m\e[32mjournalctl -fu loyald -o cat\e[0m'
echo -e "Check Status Node: \e[1m\e[32mcurl -s localhost:${LYL_PORT}657/status | jq .result.sync_info\e[0m"

source $HOME/.bash_profile
