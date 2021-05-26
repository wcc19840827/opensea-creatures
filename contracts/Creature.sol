// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC721Tradable.sol";

/**
 * @title Creature 合约入口
 * Creature - a contract for my non-fungible creatures.
 */
contract Creature is ERC721Tradable {
    constructor(address _proxyRegistryAddress)
        ERC721Tradable( "Creature",                 /*token name*/
                        "OSC",                      /*token symbol*/
                        _proxyRegistryAddress)      /*token name*/
    {}

    function baseTokenURI() override public pure returns (string memory) { //TODO:修改成自己的 元数据服务器的API
        // 官方
        // return "https://creatures-api.opensea.io/api/creature/";

        // 如果您使用IPFS托管元数据，则URL的格式应为ipfs://<hash>。例如，ipfs://QmTy8w65yBXgyfG2ZBg5TrfB2hPjrDQH3RCQFJGkARStJb
        // 缺点是不易扩展，每次修改元数据后都会产生新的CID
        // return "https://ipfs.io/ipfs/QmXeypeQzWsbiBbeo7vKuGvaRvrp9j6NGcsPWegZmW8XXy/metadata/";

        // 使用 github
        return "https://raw.githubusercontent.com/wcc19840827/opensea-creatures/ryan/dev/res/metadata/";
    }

    function contractURI() public pure returns (string memory) {
        return "https://creatures-api.opensea.io/contract/opensea-creatures";
    }
}
