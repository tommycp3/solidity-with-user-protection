pragma solidity ^0.4.0;

contract HelloWorldContract {
    string word = "Hello World";
    address owner;
    
    function HelloWorldContract() {
        owner = msg.sender;
    }
    
    function getWord() constant returns(string) {
        return word;
    }
    
    function setWord(string newWord) constant returns(string) {
        if(owner != msg.sender) {
            return "You shall not pass!";
        }
        word = newWord;
        return word;
        return "You sucessfully changed the variable word";
    }
}