// contracts/AdventCalendarDay1.sol
// SPDX-License-Identifier: MITl
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "hardhat/console.sol";

contract TwelveMignonDaysofChristmas is ERC1155, Ownable {
    
    uint256 public constant  Robin = 0;
    uint256 public constant  Ape = 1;
    uint256 public constant  Doge = 2;
    uint256 public constant  Pepe = 3;
    uint256 public constant  Paris = 4;
    uint256 public constant  Block = 5;
    uint256 public constant  Mutt = 6;
    uint256 public constant  CryptoKitty = 7;
    uint256 public constant  Punk = 8;
    uint256 public constant  Nyan = 9;
    uint256 public constant  Mignonatao = 10;
    uint256 public constant  Merging = 11;

    //address[] public _to = "";
   // uint256[] public id = [0, 0, 0];
   // uint256[] public amount = "[1, 1, 1]";

    constructor() public ERC1155("https://mignongenerated.mypinata.cloud/ipfs/{folder}/{id}.json") {

        _mint(msg.sender, Robin, 250, "");
        _mint(msg.sender, Ape, 250, "");
        _mint(msg.sender, Doge, 250, "");
        _mint(msg.sender, Pepe, 250, "");
        _mint(msg.sender, Paris, 250, "");
        _mint(msg.sender, Block, 250, "");
        _mint(msg.sender, Mutt, 250, "");
        _mint(msg.sender, CryptoKitty, 250, "");
        _mint(msg.sender, Punk, 250, "");
        _mint(msg.sender, Nyan, 250, "");
        _mint(msg.sender, Mignonatao, 250, "");
        _mint(msg.sender, Merging, 250, "");
    }
    //function mint(uint256 amount) public onlyOwner{
      //  _mint(msg.sender, Robin, amount, "");
        //_mint(msg.sender, Ape, amount, "");
        //_mint(msg.sender, Doge, amount, "");
        //_mint(msg.sender, Pepe, amount, "");
   // }

    function uri(uint256 _tokenId) override public view returns (string memory) {
        return string(
            abi.encodePacked(
                "https://mignongenerated.mypinata.cloud/ipfs/{folder}/", Strings.toString(_tokenId),
                ".json"
            )
        );
    }

    function airDropERC1155(IERC1155 _token, address[] calldata _to, uint256 _tokenId, uint256[] calldata amount) public onlyOwner{
        //require(_to.length == id.length, "recivers and ids are different lengths");
            for(uint i=0; i < _to.length; i++){
            IERC1155(_token).safeTransferFrom(msg.sender, _to[i], _tokenId, amount[i], "");
             }
    }
}
