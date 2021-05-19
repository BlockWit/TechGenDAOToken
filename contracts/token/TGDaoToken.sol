pragma solidity ^0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../util/RetrieveTokensFeature.sol";

contract TenSetToken is IERC20, RetrieveTokensFeature {

    using SafeMath for uint256;
    using Address for address;

    string private _name = "TechGen DAO Token";
    string private _symbol = "TGDao";
    uint8 private _decimals = 18;

    constructor (address[] memory addresses, uint256[] memory amounts) public {
        for(uint8 i = 0; i < addresses.length - 1; i++) {
          _mint(addresses[i], amounts[i]);
        }
    }

}

