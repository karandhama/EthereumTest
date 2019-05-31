pragma solidity ^0.5.1;

contract test1 {
    
    struct Instructor {
        uint age;
        string fname;
        string lname;
    }
    
    mapping (address => Instructor) instructors;
    
    event InstructorInfo(uint Iage,string Ifname,string Ilname);
    
    function setInstructor(address _address,string memory _fname,string memory _lname,uint _age)  public {
        instructors[_address].age = _age;
        instructors[_address].fname = _fname;
        instructors[_address].lname = _lname;
        emit InstructorInfo(_age,_fname,_lname);
    }
    
    function getInstructor(address _address) public view returns(uint,string memory,string memory) {
        return (instructors[_address].age,instructors[_address].fname,instructors[_address].lname);
    }
}
