CREATE TABLE [dbo].[MyTestTable2]
(
[PrimaryKey2] [bigint] NOT NULL IDENTITY(1, 1),
[Col4] [nchar] (10) COLLATE Latin1_General_CI_AS NULL,
[Col5] [nchar] (10) COLLATE Latin1_General_CI_AS NULL,
[Col6] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MyTestTable2] ADD CONSTRAINT [PK_MyTestTable2] PRIMARY KEY CLUSTERED  ([PrimaryKey2]) ON [PRIMARY]
GO
