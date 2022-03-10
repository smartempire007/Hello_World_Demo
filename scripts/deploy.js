const hre = require("hardhat");

async function main() {
   const HelloWorld = await hre.ethers.getContractFactory("HelloWorld");

   // Start deployment, returning a promise that resolves to a contract object
   const hello_world = await HelloWorld.deploy("Hello World!");

   console.log("Hello world contract deployed to address:", hello_world.address);

}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });