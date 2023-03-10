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
|     â      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **AirDropTokenBase** | Implementation | Ownable |||
| â | <Constructor> | Public âï¸ | ð  |NOâï¸ |
| â | distributeToken | External âï¸ | ð  | onlyOwner |
| â | emergencyWithdrawal | Public âï¸ | ð  | onlyOwner |
||||||
| **IERC20** | Interface |  |||
| â | totalSupply | External âï¸ |   |NOâï¸ |
| â | balanceOf | External âï¸ |   |NOâï¸ |
| â | transfer | External âï¸ | ð  |NOâï¸ |
| â | allowance | External âï¸ |   |NOâï¸ |
| â | approve | External âï¸ | ð  |NOâï¸ |
| â | transferFrom | External âï¸ | ð  |NOâï¸ |
||||||
| **Ownable** | Implementation | Context |||
| â | <Constructor> | Public âï¸ | ð  |NOâï¸ |
| â | owner | Public âï¸ |   |NOâï¸ |
| â | _checkOwner | Internal ð |   | |
| â | renounceOwnership | Public âï¸ | ð  | onlyOwner |
| â | transferOwnership | Public âï¸ | ð  | onlyOwner |
| â | _transferOwnership | Internal ð | ð  | |
||||||
| **Context** | Implementation |  |||
| â | _msgSender | Internal ð |   | |
| â | _msgData | Internal ð |   | |


## Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    ð    | Function can modify state |
|    ðµ    | Function is payable |

## Function Signature

|  Sighash  |  Function Signature |
|-------------|--------------|
| 68edb2a2 | distributeToken(address,address[],uint256[]) |
| 57d9989c | emergencyWithdrawal(address,uint256) |


