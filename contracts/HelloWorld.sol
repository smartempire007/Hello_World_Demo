// SPDX-Licence-Identifier:MIT
pragma solidity >=0.6.0 <0.9.0;

// Defines a contract named `HelloWorld`.
contract HelloWorld {
    // Declares a state variable `message` of type `string`.
    string public message;

    //constructor is a special function that is only executed upon contract creation.

    constructor(string memory initMessage) public {
        message = initMessage;
    }

    // A public function that returns `message` storage variable
    function hello() public view returns (string memory) {
        return message;
    }

    // A public function that accepts a string argument and updates the `message` storage variable.
    function update(string memory newMessage) public {
        message = newMessage;
    }
}
