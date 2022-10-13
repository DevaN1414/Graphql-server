
import { builder } from "../builder";
import {prisma} from "../db"
builder.prismaObject("Entities", {
    fields: t => ({
        id: t.exposeID("id"),
        name: t.exposeString("name"),
        email: t.exposeString("email"),
        mobile: t.exposeInt("mobile"),
        address: t.exposeString("address"),
        location: t.exposeString("location"),
        createdBY: t.exposeInt("createdBy"),
        createdAt: t.expose("createdAt", {
            type: "Date",
        }),
        updatedBy: t.exposeInt("updatedBy"),
        updatedAt: t.expose("updatedAt", {
            type: "Date",
        }),
        deletedBy: t.exposeInt("deletedBy"),
        deletedAt: t.expose("deletedAt", {
            type: "Date",
          }),



    
    }),
    
});
builder.queryField("Entities", (t) => t.prismaField ({
    type: ["Entities"],
    resolve : async(query, root,args, ctx,info) =>{
        return prisma.entities.findMany({...query})
    }
}))