import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

async function main() {
  const Entities = await prisma.entities.create({
    data: {
        id:1,
        name:"Deva",
        email:"Deva@gmail.com",
        mobile:8072613804,
        address:"No 33,saligramam",
        location:"chennai"

        
    },
  })
}  
main().then(() => {
  console.log("Data seeded...");
});