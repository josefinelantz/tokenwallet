// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract Condos is ERC721URIStorage {
    // Id holds the value of the last/latest token issued by our contract.
    uint32 public Id;
    
    // Maps each token ID to the Ethereum address that holds that token. 
    mapping(address => uint32)
    public MDTrack;

    constructor() ERC721("Condos Token", "CONDO") payable {
        Id = 0;
    }

    function createNFT(address receiver, string calldata metadata) external returns (uint32) {
        Id++;
        _mint(receiver, Id);
        _setTokenURI(Id, metadata);
        MDTrack[receiver] = Id;
        return Id;
    }

    function transferNFT(address sender, address receiver, uint32 transId, string calldata metadata) external {
        transferFrom(sender, receiver, transId);
        _setTokenURI(transId, metadata);
        delete MDTrack[sender];
        MDTrack[receiver] = Id;
    }
}