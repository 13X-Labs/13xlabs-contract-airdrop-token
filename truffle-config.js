require('dotenv').config();
const HDWalletProvider = require('@truffle/hdwallet-provider');
const privateKey = process.env.PRIVATE_KEY;
const bscscanKey = process.env.BSCSCAN_KEY;

module.exports = {
  networks: {
    bsctestnet: {
      provider: () => new HDWalletProvider(privateKey, "https://data-seed-prebsc-1-s1.binance.org:8545"),
      confirmations: 2,
      timeoutBlocks: 200,
      network_id: 97,
      skipDryRun: true
    }
  },


  mocha: {
    // timeout: 100000
  },

  compilers: {
    solc: {
      version: "0.6.12",
      settings: {
        optimizer: {
          enabled: true,
          runs: 200
        }
      }
    }
  },

  plugins: [
    'truffle-plugin-verify'
  ],
  api_keys: {
    bscscan: bscscanKey
  },
};