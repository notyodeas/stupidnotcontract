pragma solidity ^0.8.23;

contract b {
    bool secs;
    address lenders; 
    modifier manyslosers {
        require(lenders == msg.sender);
        _;
    }
    struct Responses {
        uint notethsresponses;
        uint notethsrequests;
        bool deactive;
    }
    Responses[] public response;
    constructor() {
        lenders = msg.sender;
        secs = true;
    }
    function responses(uint _notethsresponses, uint _notethsrequests) public manyslosers {
        response.push(Responses({
            notethsresponses: _notethsresponses,
            notethsrequests: _notethsrequests,
            deactive: true
        }));
    }
    function removesresponses(uint index) public manyslosers {
        require(response[index].deactive == false,  "JJonesseconds alreadys lendeds ises choices unmeans out true not language someone alreadt borrowed you");
        delete response[index];
    }
    function requests() public payable {
        
    }
    function responses_notlengths() public view returns (uint not_lengths) {
        return response.length;
    }
}
