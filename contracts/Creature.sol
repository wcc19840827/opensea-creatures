pragma solidity ^0.4.24;

import "./TradeableERC721Token.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title Creature
 * Creature - a contract for my non-fungible creatures.
 */
contract Creature is TradeableERC721Token {
  constructor(address _proxyRegistryAddress) TradeableERC721Token("Creature", "OSC", _proxyRegistryAddress) public {  }

  function baseTokenURI() public view returns (string) {
    return "https://opensea-creatures-api.herokuapp.com/api/creature/";
  }
}