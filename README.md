# Token-Farm-Defi-App
- This is a defi app which leverages the languages of Solidity and Javascript, and uses a testing lanauge of Chai.
- The smart contracts are ethereum based and rely on the support of MetaMask and Ganache.
- The front end component is built using React.js and CSS.
- Users are able to stake mock DAI tokens to recieve the amount back in DAPP tokens.

## Requirements
For this application it must have the following components
- Windows, Linux, or Mac OS X
- [Node.js](https://nodejs.org/en/)
- [Ganache](https://trufflesuite.com/ganache/)
- [MetaMask](https://metamask.io/)
- Coding Environment (preferably Vscode)
- Install Truffle with `npm install -g truffle` 

## How to use the program
1. Download this repo and extract the contents.
2. Open Ganache and click quickstart ethereum.
2. Run `truffle compile` in coding enviroment.
3. Run `trufgle migrate --reset` in coding enviroment
4. Import 2nd Ganache account into metamask using private key.
5. Add Ganache network using Network Name: `Ganache`, New RPC URL: `http://127.0.0.1:7545`, and Chain ID: `1337`.
6. Run `npm run start` to open the webpage where you're able to stake mock DAI for DAPP.

