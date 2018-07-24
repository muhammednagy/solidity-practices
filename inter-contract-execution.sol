pragma solidity ^0.4.22;

contract C1 {
    uint x ;
    constructor () public {
        x = 10;
    }
    
    function setX(uint _x) public returns(bool) {
        x = _x;
        return true;
    }
    
    function getX() public view returns(uint) {
        return x;
    }
    
}


contract C2 {
    function f2(uint addrC1) public view returns(uint) {
        C1 c1 = C1(addrC1);
        return c1.getX();
    }
}
