// SPDX-License-Identifier: MIT

// Defining compiler version
pragma solidity ^0.8.0;


contract HelloWorld{

    // declaring an unsigned integer
   uint number;
   

    // declaring a function that is storing the unsigned integer
    // also can get input for the number and stores it.
    // this function can be seen by anyone on the blockchain since we declared as public
    // anyone that pays the transaction fee can change the number uint to different value

    function storeNumber (uint  _number) public {

        // the unsigned integer called number will be changed to _number we put in and stores the new value
        number = _number;

    }

    // declaring a function to retrieve the unsigned integer called number
    // this function does not require gas since it is a call
    // view function does not change the state of the blockchain
    // we are stating that we expect uint for the return of this function
    // this function can be seen by anyone on the blockchain since we declared as public
    // this function also can be called by anyone to see the number uint that is been stored in the smart contract

    function retrieveNumber() public view returns (uint) {
        return number;
    }
}