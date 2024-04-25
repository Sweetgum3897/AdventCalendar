// contracts/AdventCalendarDay1.sol
// SPDX-License-Identifier: MITl
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; 
    
contract AirDrop is Ownable{
    constructor() {}
    
    function airDropERC1155(IERC1155 _token, address[] calldata _to, uint256 _tokenId, uint256[] calldata amount) public onlyOwner{
        //require(_to.length == id.length, "recivers and ids are different lengths");
            for(uint i=0; i < _to.length; i++){
            IERC1155(_token).safeTransferFrom(msg.sender, _to[i], _tokenId, amount[i], "");
             }
    }
}