var Glosowanie = artifacts.require("./Glosowanie.sol");

contract("Glosowanie", function(accounts) {

  it("initializes with two candidates", function() {
    return Glosowanie.deployed().then(function(instance) {
      return instance.liczbaWybor();
    }).then(function(licz) {
      assert.equal(licz, 2);
    });
  });
});
