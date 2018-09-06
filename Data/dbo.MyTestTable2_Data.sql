SET IDENTITY_INSERT [dbo].[MyTestTable2] ON
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (1, N'a         ', N'b         ', 1)
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (2, N'c         ', N'd         ', 2)
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (3, N'v         ', N'b         ', 2)
SET IDENTITY_INSERT [dbo].[MyTestTable2] OFF
