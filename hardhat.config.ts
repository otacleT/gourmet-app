require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-etherscan");
require("dotenv").config();
import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const networks: { [key: string]: any } = {
  goerli: {
    url: process.env.ALCHEMY_GOERLI_URL,
    accounts: [process.env.ACCOUNT_PRIVATE_KEY],
  },
};

const config: HardhatUserConfig = {
  solidity: "0.8.9",
  paths: {
    artifacts: "./artifacts",
  },
  networks,
  defaultNetwork: "goerli",
  etherscan: {
    apiKey: process.env.ETHERSCAN_API_KEY,
  },
};

export default config;
