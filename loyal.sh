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

LYL_WALLET=loyal1wwgrl05jkk3a3m9gm0wwmvq3r0fd93p8jqnyyr
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
LYL_PEERS=7490c272d1c9db40b7b9b61b0df3bb4365cb63a6@54.80.32.192:26656,b66ecdf36bb19a9af0460b3ae0901aece93ae006@44.211.18.98:26656,a19b19f09084e9f1579243a5613efde8ae5aa946@65.21.199.148:26624,607dbee191f06d9479d7ae8f9fc5de75ca840d6f@185.215.167.227:31656,7617462cde13616cfc2d4c590ef099818e5f46ca@135.181.20.44:2566,0f47d3c784ab55288a780201a3f38066f702fe3a@135.181.176.109:48656,b3a25bb1cc653dfb37205b9b6e590afd66e390ad@209.18.90.20:26656,4dee73af0dfcf44523e82b7b20fcb48ffea5138c@162.19.93.127:26656,f15a7901ea4a3b318ebc196915b72c3cf54dc6d6@18.236.110.150:26656,d5f8d8b15a062817aa8ac1d4de905e1e852a81f2@194.163.148.193:2566,0b0a94003813f2bf8d891f40661ba53a6546a8c6@149.28.200.189:2566,57fc833bf73d3cac97dcf91a8e101c35e1bbb4ab@139.180.141.77:2566,d0e0ca1af09674f71101658f646175b4e17bc5ca@65.20.66.44:2566,dbb485929f41f6cd96dc7abccb65f0f9d73180a1@185.250.36.53:2566,056011f128eb099993db18c4fcdf66d19007a1e8@20.255.163.130:2566,911b315ca74c1f295d1805cf713c433c6decedfd@38.242.153.15:2566,3136e8dbb70e15de949e70a4ed343f9a429d8584@167.99.218.248:2566,1429f5186e7f92b307e16a3b564e864c7409926f@109.123.242.226:2566,17e0f31850ebe5db70d0bc4f153eb3378920b3b8@216.250.122.218:2566,4976b12c010b22df6bb243be4d2bac49505b6802@185.192.97.126:2566,d6f8ddbff223c5c8ef5f51ebe2490a8f0f17e25f@194.233.77.238:2566,83e5912a538e314ca251858259b3363e41581154@185.208.207.36:2566,90f8b6e507488bb32cfb4465b32ea24ce7f0cedf@128.199.238.50:2566,49e67c49521e347de873c459fd0311ee17c63932@62.151.183.227:2566,e397a9fc169e7e6721a94f4fd43e0e036aeca2eb@20.163.88.92:2566,8bc9d0a9fae7047fd10a1f8d59304b0bea8b1ccd@161.97.140.6:2566,9d3e2a92c38d499ae0b891563728460d87495feb@198.71.61.63:2566,9771ae4427617b12a49680419a4cb0e15e03a4b4@185.188.249.173:2566,2b9f555e4e0fe197664ed11cd7e1a05c020e5583@178.18.247.240:2566,8c408810c753909e1135afd4293ac60eff479b5e@165.22.18.152:2566,75a7f2704d97f2972e1125bab22d9558a7c62c7e@185.188.249.44:2566,112b8bf9f2672233f2377caf76a437af0cb0ffe3@20.166.24.21:2566,84bbc823a03464cbd784703e73f4632165493f9a@185.215.166.253:2566,14f43f2c814ac0a6546956e53a08325fca5780b0@108.175.1.50:2566,fd23f238dc33ce68313cd44ccb24f0ed39b339c4@185.208.207.37:2566,6da737d895eae548dd128a32369d8fed6085c94e@104.254.247.189:2566,5f9f027ca6d782423f3e922c999efb9125d9a2af@137.184.31.29:2566,cbb624e948a4d878d9152974dbe7cb9366514efc@194.163.162.155:2566,7ec8edefd8d3ea7c0eaf5db84fa4b4f60dbb5140@128.199.218.60:2566,d94fa104d9c6c1bf877f0b0f5f0c3bb938a5b1ae@77.68.12.34:2566,677a62b5d2e9f28f434990a73c5d7ee2adfb5844@45.141.122.178:26656,cabb85a0670f4b163138d2b30b839fc2bd0bb076@149.102.130.182:2566,ed0b63f6772451c8eba4af47907bcebc70822aa4@128.199.214.35:2566,c549997c59be890f12a9d86f89b3ccb9a858ee64@193.203.15.48:2566,1a93f1afb8afe804e40e5c21ed9dc6691c2182d0@128.199.151.105:2566,0f6ae49a796c21de773864b0b227f5ca6f6a60c9@38.242.138.108:2566,e0ba7dce4cb8b77fc2dc429459b437b92a4fcd02@20.255.233.110:2566,5c332ecd0bffe5a6f5142a783489a1ef3f052886@142.93.205.59:2566,0f675aa2d1fc833a95ce763d818880607d844e53@194.233.65.27:2566,e6c30c9952302a257f0cbc47159a979cef477511@157.230.63.159:2566,9fa6c4f5e0f3a73a668befcde07b7dfb3119b1c4@161.35.215.48:2566,6de4b209afffb810700ac5407656ac8d0acb5d33@149.102.155.26:2566,e53e92aa6b56122517168f7a4850a14c9c7936ae@198.199.122.214:2566,bc09e5bc8a7f5a49a9c50fee927e3227e5645dcc@108.175.1.164:2566,14e53c7eae475b8fde1d7e024e9d88efe2b04616@188.166.247.136:2566

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
