## Setup

### Add the following to `foundry.toml`

```
eth_rpc_url = 'https://rpc.ankr.com/eth_sepolia'
etherscan_api_key = '${ETHERSCAN_KEY}'
```

### Create a `.env` file in the project directory and add the following

```
PRIVATE_KEY="private key from metamask wallet"
ETHERSCAN_KEY="etherscan api key"
MY_ADDRESS="metamask account wallet address"
```

## Useful commands

### Test script

```
forge script [path to script] -vvvv
```

### Broadcast script

```
forge script [path to script] --broadcast
```