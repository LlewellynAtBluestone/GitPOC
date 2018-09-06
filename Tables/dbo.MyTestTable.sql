CREATE TABLE [dbo].[MyTestTable]
(
[MyPrimaryKey] [bigint] NOT NULL IDENTITY(1, 1),
[Col1] [nchar] (10) COLLATE Latin1_General_CI_AS NULL,
[Col2] [datetime2] NULL,
[Col3] [int] NULL
) ON [PRIMARY]
GO
