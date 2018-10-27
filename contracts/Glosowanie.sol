pragma solidity ^0.4.24;

contract Glosowanie {
  
  // Model obiektu 'Wybor'
  struct Wybor {
    uint id;
    string nazwa;
    uint liczbaGlosow;
  }

  mapping(uint => Wybor) public wybor;

  //przechowywanie liczby dla wybor
  uint public liczbaWybor;

  function Glosowanie () public {
      dodajWybor("brak podatku VAT");
      dodajWybor("brak podatku PIT");

  }

  function dodajWybor (string _nazwa) private {
      liczbaWybor ++;
      wybor[liczbaWybor] = Wybor(liczbaWybor, _nazwa, 0);
  }



  
}
