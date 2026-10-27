-- Wird beim ersten Start des Containers (leeres Volume) automatisch ausgeführt.
-- Erzeugt aus backend/prisma/schema.prisma mit:
--   cd backend && npx prisma migrate diff --from-empty --to-schema-datamodel prisma/schema.prisma --script
-- CreateSchema
CREATE SCHEMA IF NOT EXISTS "public";

-- CreateTable
CREATE TABLE "Cocktail" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "taste" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "rating" DOUBLE PRECISION NOT NULL,
    "deleted" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Cocktail_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Item" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Item_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Itemlist" (
    "cocktail_id" INTEGER NOT NULL,
    "item_id" INTEGER NOT NULL,
    "amount" TEXT NOT NULL,

    CONSTRAINT "Itemlist_pkey" PRIMARY KEY ("cocktail_id","item_id")
);

-- AddForeignKey
ALTER TABLE "Itemlist" ADD CONSTRAINT "Itemlist_cocktail_id_fkey" FOREIGN KEY ("cocktail_id") REFERENCES "Cocktail"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Itemlist" ADD CONSTRAINT "Itemlist_item_id_fkey" FOREIGN KEY ("item_id") REFERENCES "Item"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

