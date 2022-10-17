-- CreateTable
CREATE TABLE "Desserts" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "icecream" TEXT NOT NULL,
    "juice" TEXT NOT NULL,
    "categoriesId" TEXT NOT NULL,
    "createdBy" TEXT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedBy" TEXT,
    "updatedAt" DATETIME NOT NULL,
    "deletedBy" TEXT,
    "deletedAt" DATETIME,
    CONSTRAINT "Desserts_categoriesId_fkey" FOREIGN KEY ("categoriesId") REFERENCES "Categories" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "Desserts_createdBy_fkey" FOREIGN KEY ("createdBy") REFERENCES "Categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "Desserts_updatedBy_fkey" FOREIGN KEY ("updatedBy") REFERENCES "Categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "Desserts_deletedBy_fkey" FOREIGN KEY ("deletedBy") REFERENCES "Categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Veg" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "dosa" TEXT NOT NULL,
    "idly" TEXT NOT NULL,
    "pongal" TEXT NOT NULL,
    "categoriesId" TEXT NOT NULL,
    "createdBy" TEXT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedBy" TEXT,
    "updatedAt" DATETIME NOT NULL,
    "deletedBy" TEXT,
    "deletedAt" DATETIME,
    CONSTRAINT "Veg_categoriesId_fkey" FOREIGN KEY ("categoriesId") REFERENCES "Categories" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "Veg_createdBy_fkey" FOREIGN KEY ("createdBy") REFERENCES "Categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "Veg_updatedBy_fkey" FOREIGN KEY ("updatedBy") REFERENCES "Categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "Veg_deletedBy_fkey" FOREIGN KEY ("deletedBy") REFERENCES "Categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Nonveg" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "chickenbriyani" TEXT NOT NULL,
    "muttonbriyani" TEXT NOT NULL,
    "chickenfriedrice" TEXT NOT NULL,
    "categoriesId" TEXT NOT NULL,
    "createdBy" TEXT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedBy" TEXT,
    "updatedAt" DATETIME NOT NULL,
    "deletedBy" TEXT,
    "deletedAt" DATETIME,
    CONSTRAINT "Nonveg_categoriesId_fkey" FOREIGN KEY ("categoriesId") REFERENCES "Categories" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "Nonveg_createdBy_fkey" FOREIGN KEY ("createdBy") REFERENCES "Categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "Nonveg_updatedBy_fkey" FOREIGN KEY ("updatedBy") REFERENCES "Categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "Nonveg_deletedBy_fkey" FOREIGN KEY ("deletedBy") REFERENCES "Categories" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
