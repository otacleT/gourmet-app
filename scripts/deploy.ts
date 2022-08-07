import { ethers } from "hardhat";

async function main() {
  const Gourmet = await ethers.getContractFactory("Gourmet");
  const gourmet = await Gourmet.deploy();

  await gourmet.deployed();

  console.log("Gourmet deployed to:", gourmet.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
