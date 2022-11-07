<p style="font-size:14px" align="right">
<a href="https://t.me/bangpateng_group" target="_blank">Join our telegram <img src="https://user-images.githubusercontent.com/50621007/183283867-56b4d69f-bc6e-4939-b00a-72aa019d1aea.png" width="30"/></a>
</p>

<p align="center">
  <img height="150" height="auto" src="https://user-images.githubusercontent.com/38981255/200131380-6f87a774-fde7-43ce-b2df-9f1eb3ab3158.JPG">
</p>

# LOYAL TESTNET

## Persyaratan Perangkat Keras Minimum

3x CPU; semakin tinggi kecepatan clock semakin baik
RAM 4GB
Disk 80GB
Koneksi Internet yang persisten (lalu lintas minimum 10Mbps selama testnet - setidaknya 100Mbps diharapkan untuk produksi)

## Persyaratan Perangkat Keras yang Direkomendasikan

4x CPU; semakin tinggi kecepatan clock semakin baik
RAM 8 GB
Penyimpanan 200GB (SSD atau NVME)
Koneksi Internet yang persisten (lalu lintas minimum 10Mbps selama testnet - setidaknya 100Mbps diharapkan untuk produksi)

### ✅️ Website Explorer

https://ping-pub.joinloyal.io/loyal/staking

### ✅️ Docs Official

https://docs.joinloyal.io/validators/run-a-loyal-validator

## Instalisasi Otomatis

```
wget -O loyal.sh https://raw.githubusercontent.com/bangpateng/Loyal/main/loyal.sh && chmod +x loyal.sh && ./loyal.sh
```

### Langkah-Langkah Pasca-Instalasi

Anda harus memastikan validator Anda menyinkronkan blok. Anda dapat menggunakan perintah berikut untuk memeriksa status sinkronisasi.

```
loyald status 2>&1 | jq .SyncInfo
```

### Membuat Dompet
Anda dapat menggunakan perintah berikut untuk membuat dompet baru. Jangan lupa untuk menyimpan reminder Address dan (mnemonic). Keyring pharphase isi katasandi bebas
```
loyald keys add $LYL_WALLET
```
(OPSIONAL) Untuk memulihkan dompet Anda menggunakan mnemonic:
```
loyald keys add $LYL_WALLET --recover
```
### Untuk mendapatkan daftar dompet saat ini:
```
loyald keys list
```
## Simpan Informasi Dompet

Tambahkan Alamat Dompet:
```
LYL_WALLET_ADDRESS=$(loyald keys show $LYL_WALLET -a)
```
Enter keyring passphrase: Kata Sandi Anda
```
LYL_VALOPER_ADDRESS=$(loyald keys show $LYL_WALLET --bech val -a)
```
Enter keyring passphrase: Isi Kandi Sandi Anda
```
echo 'export LYL_WALLET_ADDRESS='${LYL_WALLET_ADDRESS} >> $HOME/.bash_profile
echo 'export LYL_VALOPER_ADDRESS='${LYL_VALOPER_ADDRESS} >> $HOME/.bash_profile
source $HOME/.bash_profile
```
### Claim Faucet

Sebelum membuat validator, pastikan Anda memiliki setidaknya 1 lyl (1 lyl sama dengan 1000000 ulyl) dan node Anda sinkron.

- Join Discord : https://discord.gg/ttqvdww2
- Minta Faucet Sama Dev namanya Matt Tag Aja Orangnya di DC

## Untuk memeriksa saldo dompet Anda:
```
loyald query bank balances $LYL_WALLET_ADDRESS
```
Jika Anda tidak dapat melihat saldo di dompet, simpul Anda mungkin masih disinkronkan. Harap tunggu hingga sinkronisasi selesai, lalu lanjutkan.

## Membuat Validator:
```
loyald tx staking create-validator \
  --amount 8000000ulyl \
  --from ISI ADDRESS KALIAN \
  --min-self-delegation "1" \
  --commission-max-rate "0.2" \
  --commission-max-change-rate "0.07" \
  --commission-rate "0.07" \
  --pubkey  $(loyald tendermint show-validator) \
  --moniker ISI NAMA NODE KALIAN \
  --chain-id $LYL_ID \
  --gas-prices 1ulyl
```

## Perintah yang Berguna

Manajemen Pelayanan Periksa Log:

```
journalctl -fu loyald -o cat
```

Memulai layanan:

```
systemctl start loyald
```

Berhenti Layanan:

```
systemctl stop loyald
```
Mulai Ulang Layanan:
```
systemctl restart loyald
```
Informasi Node Informasi Sinkronisasi:
```
loyald status 2>&1 | jq .SyncInfo
```
Informasi Validator:
```
loyald status 2>&1 | jq .ValidatorInfo
```
Informasi simpul:
```
loyald status 2>&1 | jq .NodeInfo
```
Tampilkan ID Node:
```
loyald tendermint show-node-id
```
## Transaksi Dompet

### Daftar Dompet:
```
loyald keys list
```
### Pulihkan dompet menggunakan Mnemonic:
```
loyald keys add $LYL_WALLET --recover
```
### Delet Wallet:
```
loyald keys delete $LYL_WALLET
```
### Check Saldo Wallet:
```
loyald query bank balances $LYL_WALLET_ADDRESS
```
### Transfer Saldo Wallet ke Wallet:
```
loyald tx bank send $LYL_WALLET_ADDRESS <TO_WALLET_ADDRESS> 10000000ulyl
```
### pemungutan suara
```
loyald tx gov vote 1 yes --from $LYL_WALLET --chain-id=$LYL_ID
```
### Pasak, Delegasi, dan Penghargaan

Proses Delegasi:
```
loyald tx staking delegate $LYL_VALOPER_ADDRESS 10000000ulyl --from=$LYL_WALLET --chain-id=$LYL_ID --gas=auto --fees 250ulyl
```
### Mentransfer ulang bagian dari validator ke validator lain:
```
loyald tx staking redelegate <srcValidatorAddress> <destValidatorAddress> 10000000ulyl --from=$LYL_WALLET --chain-id=$LYL_ID --gas=auto --fees 250ulyl
```
### Tarik semua hadiah:
```
loyald tx distribution withdraw-all-rewards --from=$LYL_WALLET --chain-id=$LYL_ID --gas=auto --fees 250ulyl
```
### Tarik hadiah dengan komisi:
```
loyald tx distribution withdraw-rewards $LYL_VALOPER_ADDRESS --from=$LYL_WALLET --commission --chain-id=$LYL_ID
```
### Ubah Nama Validator:
```
loyald tx staking edit-validator \
--moniker=NEWNODENAME \
--chain-id=$LYL_ID \
--from=$LYL_WALLET
```
### Keluar Dari Penjara (Dibebaskan):
```
loyald tx staking edit-validator \
  --new-moniker=ISI NAMA NODE KALIAN \
  --identity="ISI PGP KEY AKUN KEYBASE" \
  --website="https://t.me/bangpateng_group" \
  --chain-id=$LYL_ID \
  --from=ISI ADDRESS KALIAN \
  --fees=250ulyl
  --gas-prices 1ulyl
```
### Untuk Menghapus Node Sepenuhnya:
```
sudo systemctl stop loyald
sudo systemctl disable loyald
sudo rm /etc/systemd/system/loyald* -rf
sudo rm $(which loyald) -rf
sudo rm $HOME/.loyal* -rf
sudo rm $HOME/loyal* -rf
sed -i '/LYL_/d' ~/.bash_profile
```
