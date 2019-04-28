pragma solidity >=0.5.2 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract CleaningDuty is ERC20Mintable, ERC20Burnable, ERC20Detailed {
  string private _name = "CleaningDuty";
  string private _symbol = "DUTY";
  uint8 private _decimals = 0;

  constructor(uint256 initSupply)
    ERC20Mintable() ERC20Burnable() ERC20Detailed(_name, _symbol, _decimals) public {
    _mint(msg.sender, initSupply);
  }
}
