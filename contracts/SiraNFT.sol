// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SiraFT is ERC721 {
    uint256 token_count;
    uint256 public totalSupply = 1000000;
    uint256 price = 100000000000000000;

    constructor() ERC721("SiraNFT", "SNFT") {}

    function mintNFT(address to) public
    {
        require(token_count < totalSupply, "Max supply");
        if (balanceOf(msg.sender) != 0) {
            require(msg.value >= price, "Not enough ETH sent; check price!");
        }
        token_count  += 1;
        _mint(to, token_count);
    }

    function setPrice(uint256 _price) public onlyOwner {
        price = _price;
    }
}