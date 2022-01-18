const HelloWorld = artifacts.require("HelloWorld");

module.exports = async function (deployer) {
  await deployer.deploy(HelloWorld, "Hello World!");
  const contract = await HelloWorld.deployed();

  console.log("Deployed success");
  console.log(await contract.greeting());
};
