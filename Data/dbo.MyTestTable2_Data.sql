SET IDENTITY_INSERT [dbo].[MyTestTable2] ON
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (1, N'a         ', N'b         ', 1)
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (2, N'c         ', N'd         ', 2)
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (3, N'v         ', N'b         ', 2)
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (4, N'test      ', N'more data ', 3)
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (7, N'fwef`     ', N'even more ', 1)
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (8, N'www       ', N'eeee      ', 2)
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (9, N'geww      ', N'gerge     ', 333)
INSERT INTO [dbo].[MyTestTable2] ([PrimaryKey2], [Col4], [Col5], [Col6]) VALUES (10, N'DemoPrac  ', N'ewfew     ', 523)
SET IDENTITY_INSERT [dbo].[MyTestTable2] OFF
