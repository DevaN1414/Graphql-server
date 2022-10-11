import "reflect-metadata";
import { ApolloServer } from "apollo-server";
import { buildSchema } from "type-graphql";
import { PrismaClient } from "@prisma/client";
import { resolvers } from "@generated/type-graphql";
  

console.log('resolvers', resolvers);

const prisma = new PrismaClient();

const PORT = process.env.PORT || 4000;

async function bootstrap() {

      
    const schema = await buildSchema({
    resolvers,
    validate: false,
});
    // ... Building schema here   

    // Create the GraphQL server
    
    const server = new ApolloServer({
            
        schema,
    
        context: () => ({ prisma }),
    });

    // Start the server
    const { url } = await server.listen(PORT);
    console.log(`Server is running, GraphQL Playground available at ${url}`);
}
bootstrap();
