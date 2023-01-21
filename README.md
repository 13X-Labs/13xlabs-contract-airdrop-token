# About Contract Airdrops

Example Airdrop Token Contract by <a href="https://www.13xlabs.com/" target="_blank">13X Labs</a> is the simplest way to send token to multiple address <br/> This is example contract.

## Features
- Send token to multiple address
- Emergency case such as smart contract hacking Vulnerability or smart contract abolishment

## Report

Files Description Table

|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| ./contracts/AirDropTokenBase.sol | 7e919f18e971091dedb028ca22bf8e7ab50817e0 |
| ./@openzeppelin/contracts/token/ERC20/IERC20.sol | 3f8f9d66083281998547ead9e2a599f5e3d049f8 |
| ./@openzeppelin/contracts/access/Ownable.sol | 691ac8cc8ecc93fa144beb50c3b0263300d15321 |
| ./@openzeppelin/contracts/utils/Context.sol | 719844505df30bda93516e78eab1ced3bfe9ff4a |


## Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **AirDropTokenBase** | Implementation | Ownable |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | distributeToken | External ❗️ | 🛑  | onlyOwner |
| └ | emergencyWithdrawal | Public ❗️ | 🛑  | onlyOwner |
||||||
| **IERC20** | Interface |  |||
| └ | totalSupply | External ❗️ |   |NO❗️ |
| └ | balanceOf | External ❗️ |   |NO❗️ |
| └ | transfer | External ❗️ | 🛑  |NO❗️ |
| └ | allowance | External ❗️ |   |NO❗️ |
| └ | approve | External ❗️ | 🛑  |NO❗️ |
| └ | transferFrom | External ❗️ | 🛑  |NO❗️ |
||||||
| **Ownable** | Implementation | Context |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | owner | Public ❗️ |   |NO❗️ |
| └ | _checkOwner | Internal 🔒 |   | |
| └ | renounceOwnership | Public ❗️ | 🛑  | onlyOwner |
| └ | transferOwnership | Public ❗️ | 🛑  | onlyOwner |
| └ | _transferOwnership | Internal 🔒 | 🛑  | |
||||||
| **Context** | Implementation |  |||
| └ | _msgSender | Internal 🔒 |   | |
| └ | _msgData | Internal 🔒 |   | |


## Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

## Function Signature

|  Sighash  |  Function Signature |
|-------------|--------------|
| 68edb2a2 | distributeToken(address,address[],uint256[]) |
| 57d9989c | emergencyWithdrawal(address,uint256) |


