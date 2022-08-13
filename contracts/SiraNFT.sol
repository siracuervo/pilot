// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SiraFT is ERC721 {
    uint256 token_count;
    uint256 public totalSupply = 1000000;
 
    constructor() ERC721("SiraNFT", "SNFT") {}

    function mintNFT(address to) public
    {
        require(token_count < totalSupply, "Max supply");
        token_count  += 1;
        _mint(to, token_count);
    }
}