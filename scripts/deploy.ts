import { ethers } from "hardhat";

async function main() {
  const Grourmet = await ethers.getContractFactory("Grourmet");
  const grourmet = await Grourmet.deploy();

  await grourmet.deployed();

  console.log("Grourmet deployed to:", grourmet.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
