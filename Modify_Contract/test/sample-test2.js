const { expect, assert } = require("chai");

describe("TestModifyVariable", function () {
  it("should change y to 'Default String'", async function () {
    const ModifyVariable = await ethers.getContractFactory("ModifyVariable");
    const contract = await ModifyVariable.deploy(11, "First Message");
    await contract.deployed();
    await contract.modifyToLeet();
    const newY = await contract.y();
    assert.equal(newY, "Default String");
  })
})