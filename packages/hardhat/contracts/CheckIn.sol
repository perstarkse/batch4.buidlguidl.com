pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

interface BatchRegistryContract {
	function checkIn() external;
}

contract CheckIn is Ownable {
	address public batchRegistryContract;

	constructor(address _owner, address _batchRegistryContract) {
		super.transferOwnership(_owner);
		batchRegistryContract = _batchRegistryContract;
	}

	function checkIn() public onlyOwner {
		BatchRegistryContract(batchRegistryContract).checkIn();
	}
}
