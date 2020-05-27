IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

CREATE TABLE [Cliente] (
    [ClienteId] int NOT NULL IDENTITY,
    [Nome] nvarchar(50) NULL,
    [Email] nvarchar(100) NULL,
    [Ativo] bit NOT NULL,
    CONSTRAINT [PK_Cliente] PRIMARY KEY ([ClienteId])
);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20200527014922_InitialCreate', N'2.1.14-servicing-32113');

GO

