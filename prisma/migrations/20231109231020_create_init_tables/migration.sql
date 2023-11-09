-- CreateExtension
CREATE EXTENSION IF NOT EXISTS "vector" WITH SCHEMA "public";

-- CreateTable
CREATE TABLE "Vector" (
    "id" SERIAL NOT NULL,
    "embedding" vector(1536),
    "embedding_content" TEXT NOT NULL,
    "metadata" JSONB,
    "namespace" TEXT NOT NULL DEFAULT 'default',
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Vector_pkey" PRIMARY KEY ("id")
);
