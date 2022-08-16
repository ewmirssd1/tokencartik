require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  networks:{
    mumbai:{
      url:"https://rpc-mumbai.maticvigil.com/",
      accounts:["82f8731b3b0e6fcee4a9af926e8103e547e08edc0fc739eb8182078f0599d97b"]
    }

  }
};
