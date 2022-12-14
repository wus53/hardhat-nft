// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    string public constant TOKEN_URI =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";
    uint256 private tokenCounter;

    constructor() ERC721("Dogie", "DOG") {}

    function mintNft() public returns (uint256) {
        _safeMint(msg.sender, tokenCounter);
        tokenCounter += 1;
        return tokenCounter;
    }

    function tokenURI(uint256 /* tokenId */) public pure override returns (string memory) {
        // require(_exist(tokenId))
        return TOKEN_URI;
    }

    function getTokenCounter() public view returns (uint256) {
        return tokenCounter;
    }
}
