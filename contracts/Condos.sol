// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Condos is ERC721 {
    // Id holds the value of the last/latest token issued by our contract.
    uint32 public Id;
    
    // Maps each token ID to the Ethereum address that holds that token. 
    mapping(address => uint32)
    public MDTrack;

    constructor() ERC721("Condos Token", "CONDO") payable {
        Id = 0;
    }

    function createNFT(address receiver) external returns (uint32) {
        Id++;
        _mint(receiver, Id);
        tokenURI(Id);
        MDTrack[receiver] = Id;
        return Id;
    }

    function transferNFT(address sender, address receiver, uint32 transId) external {
        transferFrom(sender, receiver, transId);
        tokenURI(transId);
        delete MDTrack[sender];
        MDTrack[receiver] = Id;
    }
}