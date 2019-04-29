pragma solidity >=0.5.2 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";


contract CleaningDuty is ERC20Detailed, ERC20Mintable, ERC20Burnable {
  string private _name = "CleaningDuty";
  string private _symbol = "DUTY";
  uint8 private _decimals = 0;

  constructor(uint256 initSupply)
    ERC20Detailed(_name, _symbol, _decimals) ERC20Mintable() ERC20Burnable() public {
    _mint(msg.sender, initSupply);
  }

  function _transfer(address from, address to, uint256 value) internal {
    require(balanceOf(to) + value <= 1, "Number of DUTYs assigned to a student is at most 1.");
    super._transfer(from, to, value);
  }
}
