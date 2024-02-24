USE [master]
GO
CREATE DATABASE [4USER_PRJ301]
GO
USE [4USER_PRJ301]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/24/2024 7:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[image] [nvarchar](max) NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[description] [nvarchar](max) NULL,
	[categoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'văn học')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'khoa học')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'kinh tế')
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'chính trị')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (1, N'One Way Passage', N'http://dummyimage.com/182x201.png/5fa2dd/ffffff', 58, 4, N'5th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (2, N'Light Years Away', N'http://dummyimage.com/199x188.png/ff4444/ffffff', 64, 64, N'Room 53', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (3, N'It''s a Small World', N'http://dummyimage.com/132x127.png/dddddd/000000', 9, 84, N'PO Box 93871', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (4, N'To the Devil a Daughter', N'http://dummyimage.com/229x240.png/dddddd/000000', 59, 40, N'PO Box 9072', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (5, N'Rains of Ranchipur, The', N'http://dummyimage.com/235x248.png/dddddd/000000', 87, 86, N'Suite 9', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (6, N'Alice Doesn''t Live Here Anymore', N'http://dummyimage.com/141x195.png/dddddd/000000', 100, 26, N'2nd Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (7, N'Lady with the Dog, The (Dama s sobachkoy)', N'http://dummyimage.com/151x233.png/5fa2dd/ffffff', 100, 69, N'PO Box 61840', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (8, N'Peacemaker, The', N'http://dummyimage.com/137x209.png/dddddd/000000', 72, 59, N'Apt 1270', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (9, N'Quantum of Solace', N'http://dummyimage.com/159x167.png/5fa2dd/ffffff', 15, 62, N'15th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (10, N'Grudge 3, The', N'http://dummyimage.com/117x125.png/dddddd/000000', 80, 45, N'Apt 109', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (11, N'Other Woman, The', N'http://dummyimage.com/126x171.png/cc0000/ffffff', 84, 74, N'Suite 23', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (12, N'Barefoot Gen (Hadashi no Gen)', N'http://dummyimage.com/216x125.png/cc0000/ffffff', 25, 35, N'Apt 1672', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (13, N'Ugly, Dirty and Bad (Brutti sporchi e cattivi)', N'http://dummyimage.com/188x123.png/5fa2dd/ffffff', 76, 19, N'3rd Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (14, N'Shut Up & Sing', N'http://dummyimage.com/109x249.png/dddddd/000000', 82, 81, N'Apt 793', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (15, N'Sonic Outlaws', N'http://dummyimage.com/195x215.png/cc0000/ffffff', 16, 16, N'PO Box 74721', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (16, N'Martha Marcy May Marlene', N'http://dummyimage.com/149x210.png/cc0000/ffffff', 100, 30, N'Room 860', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (17, N'River Why, The', N'http://dummyimage.com/222x212.png/cc0000/ffffff', 15, 20, N'Suite 100', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (18, N'Pleasures of the Flesh (Etsuraku)', N'http://dummyimage.com/187x107.png/5fa2dd/ffffff', 68, 59, N'Apt 1901', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (19, N'Hanging Tree, The', N'http://dummyimage.com/141x134.png/5fa2dd/ffffff', 53, 55, N'Room 1471', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (20, N'Mountain Men, The', N'http://dummyimage.com/139x209.png/cc0000/ffffff', 98, 57, N'PO Box 37440', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (21, N'Scooby-Doo! The Mystery Begins', N'http://dummyimage.com/227x164.png/5fa2dd/ffffff', 92, 64, N'Room 1599', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (22, N'Year of Living Dangerously, The', N'http://dummyimage.com/232x140.png/cc0000/ffffff', 11, 9, N'Suite 42', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (23, N'Bowling for Columbine', N'http://dummyimage.com/179x226.png/dddddd/000000', 56, 29, N'Room 1070', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (24, N'Italian for Beginners (Italiensk for begyndere)', N'http://dummyimage.com/197x207.png/ff4444/ffffff', 8, 56, N'Apt 665', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (25, N'Woodstock', N'http://dummyimage.com/101x130.png/dddddd/000000', 10, 78, N'Suite 78', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (26, N'If You Don''t Stop It... You''ll Go Blind!!!', N'http://dummyimage.com/175x150.png/dddddd/000000', 95, 30, N'PO Box 57705', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (27, N'Peter and Vandy', N'http://dummyimage.com/237x137.png/ff4444/ffffff', 65, 16, N'PO Box 86723', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (28, N'Little Mermaid, The', N'http://dummyimage.com/149x100.png/5fa2dd/ffffff', 59, 45, N'PO Box 78107', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (29, N'Things We Do For Love (Kaikella rakkaudella)', N'http://dummyimage.com/189x132.png/dddddd/000000', 89, 7, N'8th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (30, N'Human Comedy, The', N'http://dummyimage.com/121x235.png/dddddd/000000', 4, 79, N'PO Box 89032', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (31, N'Henry IV, Part I (First Part of King Henry the Fourth, with the Life and Death of Henry Surnamed Hotspur, The)', N'http://dummyimage.com/158x206.png/5fa2dd/ffffff', 11, 74, N'Apt 866', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (32, N'Skyfall', N'http://dummyimage.com/223x182.png/ff4444/ffffff', 1, 38, N'8th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (33, N'Three Coins in the Fountain', N'http://dummyimage.com/183x164.png/cc0000/ffffff', 53, 92, N'16th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (34, N'Kurt & Courtney', N'http://dummyimage.com/110x102.png/ff4444/ffffff', 97, 34, N'11th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (35, N'Memories of Underdevelopment (Memorias del subdesarrollo)', N'http://dummyimage.com/128x106.png/ff4444/ffffff', 9, 7, N'PO Box 76058', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (36, N'Follow the Bitch', N'http://dummyimage.com/148x180.png/5fa2dd/ffffff', 84, 78, N'Apt 1429', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (37, N'Martin & Orloff', N'http://dummyimage.com/203x170.png/5fa2dd/ffffff', 81, 68, N'Apt 605', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (38, N'Annie', N'http://dummyimage.com/172x117.png/cc0000/ffffff', 8, 94, N'Suite 42', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (39, N'Comedy, The', N'http://dummyimage.com/139x142.png/5fa2dd/ffffff', 21, 10, N'Room 782', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (40, N'Heartbreakers', N'http://dummyimage.com/216x214.png/5fa2dd/ffffff', 15, 60, N'13th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (41, N'Crash Reel, The', N'http://dummyimage.com/131x146.png/cc0000/ffffff', 68, 97, N'Apt 533', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (42, N'Ernest in the Army', N'http://dummyimage.com/241x222.png/ff4444/ffffff', 45, 36, N'7th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (43, N'Booker''s Place: A Mississippi Story', N'http://dummyimage.com/225x171.png/5fa2dd/ffffff', 91, 85, N'Apt 396', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (44, N'Ants in the Pants', N'http://dummyimage.com/199x195.png/dddddd/000000', 80, 89, N'Suite 77', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (45, N'Fine Pair, A (Ruba al prossimo tuo)', N'http://dummyimage.com/200x178.png/cc0000/ffffff', 74, 50, N'PO Box 93367', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (46, N'Book of Life, The', N'http://dummyimage.com/194x153.png/5fa2dd/ffffff', 55, 87, N'Room 1155', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (47, N'My Awkward Sexual Adventure', N'http://dummyimage.com/137x197.png/dddddd/000000', 28, 65, N'Apt 840', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (48, N'Ocean''s Eleven (a.k.a. Ocean''s 11)', N'http://dummyimage.com/156x182.png/cc0000/ffffff', 93, 3, N'Apt 1974', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (49, N'Eight Deadly Shots (Kahdeksan surmanluotia)', N'http://dummyimage.com/159x212.png/5fa2dd/ffffff', 60, 7, N'Suite 31', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (50, N'Pirates of Silicon Valley', N'http://dummyimage.com/123x150.png/dddddd/000000', 96, 75, N'Apt 1166', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (51, N'Dark House', N'http://dummyimage.com/132x236.png/cc0000/ffffff', 10, 69, N'19th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (52, N'Madonna''s Pig', N'http://dummyimage.com/183x115.png/cc0000/ffffff', 24, 20, N'Suite 64', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (53, N'Solitary Man', N'http://dummyimage.com/157x112.png/dddddd/000000', 69, 28, N'PO Box 87697', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (54, N'Blue State', N'http://dummyimage.com/225x150.png/5fa2dd/ffffff', 65, 61, N'PO Box 1562', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (55, N'Jesus Camp', N'http://dummyimage.com/148x232.png/ff4444/ffffff', 92, 68, N'PO Box 97513', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (56, N'The Visitor', N'http://dummyimage.com/118x149.png/dddddd/000000', 94, 78, N'6th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (57, N'Cat''s Meow, The', N'http://dummyimage.com/129x150.png/5fa2dd/ffffff', 38, 54, N'Suite 36', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (58, N'Horror Express', N'http://dummyimage.com/108x110.png/cc0000/ffffff', 95, 45, N'Suite 96', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (59, N'Time Without Pity', N'http://dummyimage.com/194x218.png/5fa2dd/ffffff', 36, 1, N'Suite 10', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (60, N'Woman in Black, The', N'http://dummyimage.com/166x212.png/dddddd/000000', 37, 11, N'Suite 95', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (61, N'Waiting Room, The', N'http://dummyimage.com/195x124.png/ff4444/ffffff', 79, 5, N'Suite 10', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (62, N'Shutter', N'http://dummyimage.com/160x162.png/dddddd/000000', 34, 68, N'PO Box 82602', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (63, N'Dorian Blues', N'http://dummyimage.com/246x219.png/dddddd/000000', 27, 91, N'Room 1018', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (64, N'World Is Not Enough, The', N'http://dummyimage.com/176x224.png/5fa2dd/ffffff', 27, 79, N'Apt 141', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (65, N'Ashura', N'http://dummyimage.com/151x213.png/cc0000/ffffff', 60, 6, N'Apt 1325', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (66, N'Pure One (Pakeezah)', N'http://dummyimage.com/165x112.png/5fa2dd/ffffff', 72, 3, N'Suite 65', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (67, N'Garfield: A Tail of Two Kitties', N'http://dummyimage.com/102x107.png/5fa2dd/ffffff', 10, 16, N'6th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (68, N'Women in Trouble', N'http://dummyimage.com/162x109.png/cc0000/ffffff', 52, 9, N'15th Floor', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (69, N'War of the Robots (La guerra dei robot)', N'http://dummyimage.com/129x241.png/dddddd/000000', 1, 36, N'PO Box 25498', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (70, N'Girl Model', N'http://dummyimage.com/214x102.png/cc0000/ffffff', 91, 7, N'Suite 81', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (71, N'Gemini (Sôseiji)', N'http://dummyimage.com/164x215.png/dddddd/000000', 52, 70, N'Suite 6', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (72, N'Dances Sacred and Profane', N'http://dummyimage.com/244x111.png/dddddd/000000', 49, 4, N'Room 1495', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (73, N'Pretty/Handsome', N'http://dummyimage.com/142x143.png/ff4444/ffffff', 94, 31, N'PO Box 98203', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (74, N'Little Foxes, The', N'http://dummyimage.com/123x130.png/dddddd/000000', 33, 72, N'Room 1845', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (75, N'Lost Battalion, The', N'http://dummyimage.com/145x167.png/cc0000/ffffff', 71, 57, N'Suite 24', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (76, N'Sleepwalkers', N'http://dummyimage.com/237x237.png/cc0000/ffffff', 46, 59, N'Apt 1766', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (77, N'Bestseller (Be-seu-teu-sel-leo)', N'http://dummyimage.com/194x161.png/cc0000/ffffff', 68, 31, N'Room 1479', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (78, N'Tyler Perry''s Madea''s Big Happy Family', N'http://dummyimage.com/133x231.png/ff4444/ffffff', 7, 46, N'Suite 26', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (79, N'Eve''s Bayou', N'http://dummyimage.com/125x130.png/5fa2dd/ffffff', 41, 9, N'Apt 239', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (80, N'Mostly Unfabulous Social Life of Ethan Green, The', N'http://dummyimage.com/157x136.png/cc0000/ffffff', 80, 49, N'PO Box 87081', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (81, N'Thesis (Tesis)', N'http://dummyimage.com/160x148.png/dddddd/000000', 97, 34, N'Room 1948', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (82, N'Raisin in the Sun, A', N'http://dummyimage.com/197x158.png/ff4444/ffffff', 28, 79, N'PO Box 51046', 1)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (83, N'Jacky in the Kingdom of Women', N'http://dummyimage.com/200x162.png/dddddd/000000', 95, 59, N'8th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (84, N'Workingman''s Death', N'http://dummyimage.com/229x211.png/5fa2dd/ffffff', 98, 25, N'10th Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (85, N'Afstiros katallilo', N'http://dummyimage.com/126x136.png/ff4444/ffffff', 76, 35, N'Room 1059', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (86, N'Three Brothers, The (Les trois frères)', N'http://dummyimage.com/140x130.png/cc0000/ffffff', 39, 19, N'Suite 12', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (87, N'Venice/Venice', N'http://dummyimage.com/235x188.png/5fa2dd/ffffff', 8, 87, N'1st Floor', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (88, N'Boob, The', N'http://dummyimage.com/250x121.png/5fa2dd/ffffff', 91, 91, N'Apt 1666', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (89, N'My Last Day Without You (Nie mehr ohne Dich)', N'http://dummyimage.com/221x123.png/cc0000/ffffff', 28, 55, N'Room 1872', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (90, N'Suite Française', N'http://dummyimage.com/149x121.png/dddddd/000000', 66, 46, N'PO Box 77816', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (91, N'Square Dance', N'http://dummyimage.com/115x115.png/ff4444/ffffff', 87, 77, N'Apt 1570', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (92, N'Saint (Sint)', N'http://dummyimage.com/184x195.png/dddddd/000000', 12, 35, N'Apt 1505', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (93, N'Summer Wishes, Winter Dreams', N'http://dummyimage.com/234x142.png/cc0000/ffffff', 59, 29, N'18th Floor', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (94, N'Guitar, The', N'http://dummyimage.com/225x123.png/5fa2dd/ffffff', 88, 25, N'Apt 411', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (95, N'Hard, Fast and Beautiful', N'http://dummyimage.com/113x219.png/ff4444/ffffff', 12, 24, N'Apt 501', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (96, N'Too Hot to Handle', N'http://dummyimage.com/130x110.png/cc0000/ffffff', 61, 86, N'Suite 83', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (97, N'Revolutionary Road', N'http://dummyimage.com/237x107.png/cc0000/ffffff', 35, 98, N'2nd Floor', 4)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (98, N'Foxfire', N'http://dummyimage.com/156x155.png/cc0000/ffffff', 27, 14, N'Apt 787', 2)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (99, N'Bat*21', N'http://dummyimage.com/203x234.png/cc0000/ffffff', 16, 81, N'Room 764', 3)
GO
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [categoryId]) VALUES (100, N'Willard', N'http://dummyimage.com/242x163.png/5fa2dd/ffffff', 85, 64, N'17th Floor', 2)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [4USER_PRJ301] SET  READ_WRITE 
GO
