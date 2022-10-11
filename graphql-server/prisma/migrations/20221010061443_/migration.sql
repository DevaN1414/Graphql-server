/*
  Warnings:

  - You are about to drop the `Object` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Object";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "workspace" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "mobile" INTEGER NOT NULL,
    "location" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "createdBy" INTEGER NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedBy" INTEGER NOT NULL,
    "updatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deletedBy" INTEGER NOT NULL,
    "deletedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateIndex
CREATE UNIQUE INDEX "workspace_email_key" ON "workspace"("email");

-- CreateIndex
CREATE UNIQUE INDEX "workspace_mobile_key" ON "workspace"("mobile");
