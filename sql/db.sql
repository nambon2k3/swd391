USE [InpatientHospital]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[createdAt] [date] NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bed]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bed](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomId] [int] NULL,
	[isDeleted] [bit] NULL,
	[patientId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[medicalRecordId] [int] NULL,
	[isDeleted] [bit] NULL,
	[createdAt] [date] NULL,
	[total] [float] NULL,
	[paymentMethod] [varchar](255) NULL,
	[userId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalRecord]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[patientId] [int] NULL,
	[doctorId] [int] NULL,
	[nurseId] [int] NULL,
	[symptom] [varchar](255) NULL,
	[diagnosis] [varchar](255) NULL,
	[illnessHistory] [varchar](255) NULL,
	[treatmentMethod] [varchar](255) NULL,
	[isDeleted] [bit] NULL,
	[createdAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[materialName] [varchar](255) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[createdAt] [date] NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicineAssignDetail]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicineAssignDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[treatmentsheetId] [int] NULL,
	[medicineId] [int] NULL,
	[quantity] [int] NULL,
	[frequency] [varchar](255) NULL,
	[observationDetail] [varchar](255) NULL,
	[startDate] [date] NULL,
	[status] [varchar](255) NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roomName] [varchar](255) NULL,
	[floor] [int] NULL,
	[status] [varchar](255) NULL,
	[createdAt] [date] NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[materialName] [varchar](255) NULL,
	[price] [float] NULL,
	[createdAt] [date] NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceAssignDetail]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceAssignDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[treatmentsheetId] [int] NULL,
	[serviceId] [int] NULL,
	[note] [varchar](255) NULL,
	[diagnostic] [varchar](255) NULL,
	[startDate] [date] NULL,
	[observationDetail] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supply]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[materialName] [varchar](255) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[createdAt] [date] NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplyAssignDetail]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplyAssignDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[treatmentsheetId] [int] NULL,
	[supplyId] [int] NULL,
	[quantity] [int] NULL,
	[startDate] [date] NULL,
	[status] [varchar](255) NULL,
	[observationDetail] [varchar](255) NULL,
	[isDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreatmentSheet]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreatmentSheet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[medicalRecordId] [int] NULL,
	[currentCondition] [varchar](255) NULL,
	[isDeleted] [bit] NULL,
	[createdAt] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/2/2024 10:34:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[number] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[gender] [varchar](50) NULL,
	[age] [int] NULL,
	[createdAt] [date] NULL,
	[role] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MedicalRecord] ON 

INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (1, 3, 2, 1, N'Fever and cough', N'Flu', N'None', N'Rest and hydration', 0, CAST(N'2024-01-01' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (2, 3, 2, 1, N'Chest pain', N'Angina', N'Hypertension', N'Medication', 0, CAST(N'2024-01-02' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (3, 3, 2, 1, N'Headache and dizziness', N'Migraine', N'None', N'Pain relief', 0, CAST(N'2024-01-03' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (4, 3, 2, 1, N'Abdominal pain', N'Gastritis', N'None', N'Antacids', 0, CAST(N'2024-01-04' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (5, 3, 2, 1, N'Shortness of breath', N'Asthma', N'Allergy', N'Inhaler', 0, CAST(N'2024-01-05' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (6, 3, 2, 1, N'Back pain', N'Herniated disc', N'None', N'Physical therapy', 0, CAST(N'2024-01-06' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (7, 3, 2, 1, N'Sore throat', N'Tonsillitis', N'None', N'Antibiotics', 0, CAST(N'2024-01-07' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (8, 3, 2, 1, N'Joint pain', N'Arthritis', N'None', N'Anti-inflammatory', 0, CAST(N'2024-01-08' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (9, 3, 2, 1, N'Blurred vision', N'Cataract', N'None', N'Surgery', 0, CAST(N'2024-01-09' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (10, 3, 2, 1, N'Fatigue', N'Anemia', N'Iron deficiency', N'Iron supplements', 0, CAST(N'2024-01-10' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (11, 3, 2, 1, N'Nausea and vomiting', N'Gastroenteritis', N'None', N'Rehydration', 0, CAST(N'2024-01-11' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (12, 3, 2, 1, N'Swelling in legs', N'Edema', N'Heart failure', N'Diuretics', 0, CAST(N'2024-01-12' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (13, 3, 2, 1, N'Memory loss', N'Alzheimer’s disease', N'None', N'Medication', 0, CAST(N'2024-01-13' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (14, 3, 2, 1, N'Weight loss', N'Diabetes', N'Family history', N'Insulin', 0, CAST(N'2024-01-14' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (15, 3, 2, 1, N'Skin rash', N'Eczema', N'Allergy', N'Topical steroids', 0, CAST(N'2024-01-15' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (16, 3, 2, 1, N'Frequent urination', N'Urinary tract infection', N'None', N'Antibiotics', 0, CAST(N'2024-01-16' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (17, 3, 2, 1, N'Chest tightness', N'Pneumonia', N'None', N'Antibiotics', 0, CAST(N'2024-01-17' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (18, 3, 2, 1, N'Difficulty sleeping', N'Insomnia', N'Stress', N'Sleep aids', 0, CAST(N'2024-01-18' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (19, 3, 2, 1, N'Loss of appetite', N'Depression', N'Family history', N'Therapy', 0, CAST(N'2024-01-19' AS Date))
INSERT [dbo].[MedicalRecord] ([id], [patientId], [doctorId], [nurseId], [symptom], [diagnosis], [illnessHistory], [treatmentMethod], [isDeleted], [createdAt]) VALUES (20, 3, 2, 1, N'Frequent headaches', N'Cluster headaches', N'None', N'Pain management', 0, CAST(N'2024-01-20' AS Date))
SET IDENTITY_INSERT [dbo].[MedicalRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicine] ON 

INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (1, N'Paracetamol', 5.99, 19, CAST(N'2023-12-15' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (2, N'Amoxicillin', 8.5, 50, CAST(N'2023-11-20' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (3, N'Ibuprofen', 7.25, 75, CAST(N'2023-10-10' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (4, N'Omeprazole', 10.75, 30, CAST(N'2023-09-05' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (5, N'Lisinopril', 6.8, 25, CAST(N'2023-08-01' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (6, N'Atorvastatin', 12.45, 40, CAST(N'2023-07-15' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (7, N'Metformin', 9.3, 60, CAST(N'2023-06-22' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (8, N'Simvastatin', 11.2, 35, CAST(N'2023-05-18' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (9, N'Levothyroxine', 8.99, 55, CAST(N'2023-04-10' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (10, N'Warfarin', 7.75, 20, CAST(N'2023-03-01' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (11, N'Losartan', 9.5, 45, CAST(N'2023-02-15' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (12, N'Metoprolol', 6.5, 70, CAST(N'2023-01-05' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (13, N'Amlodipine', 10.25, 40, CAST(N'2022-12-10' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (14, N'Hydrochlorothiazide', 8.8, 30, CAST(N'2022-11-20' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (15, N'Prednisone', 7.99, 25, CAST(N'2022-10-15' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (16, N'Gabapentin', 11.75, 35, CAST(N'2022-09-01' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (17, N'Alprazolam', 9.3, 15, CAST(N'2022-08-05' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (18, N'Sertraline', 12.5, 50, CAST(N'2022-07-10' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (19, N'Escitalopram', 10.2, 40, CAST(N'2022-06-15' AS Date), 0)
INSERT [dbo].[Medicine] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (20, N'Tramadol', 8.9, 60, CAST(N'2022-05-20' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[MedicineAssignDetail] ON 

INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (3, 2, 1, 10, N'Once a day', N'No adverse reactions', CAST(N'2024-07-01' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (4, 2, 2, 20, N'Twice a day', N'Mild nausea', CAST(N'2024-07-02' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (5, 2, 3, 30, N'Once a week', N'Patient tolerates well', CAST(N'2024-07-03' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (6, 2, 4, 5, N'Every 8 hours', N'Headache reported', CAST(N'2024-07-04' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (7, 2, 5, 15, N'Once a day', N'No issues', CAST(N'2024-07-05' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (8, 2, 6, 25, N'Every 12 hours', N'Drowsiness noted', CAST(N'2024-07-06' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (9, 2, 7, 10, N'Once a day', N'Patient feeling better', CAST(N'2024-07-07' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (10, 2, 8, 20, N'Twice a day', N'No side effects', CAST(N'2024-07-08' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (11, 2, 9, 30, N'Once a week', N'Good response', CAST(N'2024-07-09' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (12, 2, 10, 5, N'Every 8 hours', N'Mild headache', CAST(N'2024-07-10' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (13, 2, 11, 15, N'Once a day', N'No complaints', CAST(N'2024-07-11' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (14, 2, 12, 25, N'Every 12 hours', N'Patient is stable', CAST(N'2024-07-12' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (15, 2, 13, 10, N'Once a day', N'Good improvement', CAST(N'2024-07-13' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (16, 2, 14, 20, N'Twice a day', N'No issues reported', CAST(N'2024-07-14' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (17, 2, 15, 30, N'Once a week', N'Stable condition', CAST(N'2024-07-15' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (18, 2, 16, 5, N'Every 8 hours', N'No adverse reactions', CAST(N'2024-07-16' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (19, 2, 17, 15, N'Once a day', N'Mild nausea', CAST(N'2024-07-17' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (20, 2, 18, 25, N'Every 12 hours', N'Patient tolerates well', CAST(N'2024-07-18' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (21, 2, 19, 10, N'Once a day', N'Drowsiness noted', CAST(N'2024-07-19' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (22, 2, 20, 20, N'Twice a day', N'No side effects', CAST(N'2024-07-20' AS Date), N'Complete', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (23, 2, 1, 1, N'test', N'123', CAST(N'2024-07-17' AS Date), N'Active', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (24, 2, 1, 123123123, N'123', N'123', CAST(N'2024-07-18' AS Date), N'Active', 0)
INSERT [dbo].[MedicineAssignDetail] ([id], [treatmentsheetId], [medicineId], [quantity], [frequency], [observationDetail], [startDate], [status], [isDeleted]) VALUES (25, 2, 1, 1, N'123123', N'123', CAST(N'2024-07-10' AS Date), N'Active', 0)
SET IDENTITY_INSERT [dbo].[MedicineAssignDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (1, N'Blood Test', 100, CAST(N'2024-01-01' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (2, N'X-Ray', 200, CAST(N'2024-01-02' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (3, N'MRI Scan', 1500, CAST(N'2024-01-03' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (4, N'CT Scan', 1200, CAST(N'2024-01-04' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (5, N'Ultrasound', 300, CAST(N'2024-01-05' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (6, N'ECG', 250, CAST(N'2024-01-06' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (7, N'Echocardiogram', 500, CAST(N'2024-01-07' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (8, N'Physiotherapy', 100, CAST(N'2024-01-08' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (9, N'Vaccination', 80, CAST(N'2024-01-09' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (10, N'Dental Cleaning', 150, CAST(N'2024-01-10' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (11, N'Minor Surgery', 800, CAST(N'2024-01-11' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (12, N'Major Surgery', 5000, CAST(N'2024-01-12' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (13, N'Dialysis', 400, CAST(N'2024-01-13' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (14, N'Chemotherapy', 2000, CAST(N'2024-01-14' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (15, N'Radiation Therapy', 2500, CAST(N'2024-01-15' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (16, N'Counseling', 100, CAST(N'2024-01-16' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (17, N'Nutrition Consultation', 120, CAST(N'2024-01-17' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (18, N'Pediatric Care', 150, CAST(N'2024-01-18' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (19, N'Prenatal Care', 200, CAST(N'2024-01-19' AS Date), 0)
INSERT [dbo].[Service] ([id], [materialName], [price], [createdAt], [isDeleted]) VALUES (20, N'Postnatal Care', 180, CAST(N'2024-01-20' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceAssignDetail] ON 

INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (1, 2, 1, N'Routine blood test', N'Anemia check', CAST(N'2024-01-01' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (2, 2, 2, N'X-Ray of chest', N'Suspected pneumonia', CAST(N'2024-01-02' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (3, 2, 3, N'MRI of brain', N'Headache investigation', CAST(N'2024-01-03' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (4, 2, 4, N'CT scan of abdomen', N'Abdominal pain', CAST(N'2024-01-04' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (5, 2, 5, N'Ultrasound of pelvis', N'Pelvic pain', CAST(N'2024-01-05' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (6, 2, 6, N'ECG', N'Chest pain', CAST(N'2024-01-06' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (7, 2, 7, N'Echocardiogram', N'Heart murmur', CAST(N'2024-01-07' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (8, 2, 8, N'Physiotherapy', N'Post-surgery recovery', CAST(N'2024-01-08' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (9, 2, 9, N'Vaccination', N'Flu prevention', CAST(N'2024-01-09' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (10, 2, 10, N'Dental cleaning', N'Routine check-up', CAST(N'2024-01-10' AS Date), N'Patient is stable', N'Active', 0)
INSERT [dbo].[ServiceAssignDetail] ([id], [treatmentsheetId], [serviceId], [note], [diagnostic], [startDate], [observationDetail], [status], [isDeleted]) VALUES (11, 2, 11, N'Minor surgery', N'Appendectomy', CAST(N'2024-01-11' AS Date), N'Patient is stable', N'Active', 0)
SET IDENTITY_INSERT [dbo].[ServiceAssignDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Supply] ON 

INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (1, N'Bandages', 5, 100, CAST(N'2024-01-01' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (2, N'Syringes', 0.5, 1000, CAST(N'2024-01-02' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (3, N'Gloves', 10, 500, CAST(N'2024-01-03' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (4, N'Masks', 1, 1000, CAST(N'2024-01-04' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (5, N'Alcohol Swabs', 0.1, 2000, CAST(N'2024-01-05' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (6, N'Cotton Balls', 0.05, 3000, CAST(N'2024-01-06' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (7, N'Gauze', 2, 200, CAST(N'2024-01-07' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (8, N'IV Kits', 20, 100, CAST(N'2024-01-08' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (9, N'Thermometers', 15, 150, CAST(N'2024-01-09' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (10, N'Blood Pressure Cuffs', 25, 100, CAST(N'2024-01-10' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (11, N'Stethoscopes', 50, 50, CAST(N'2024-01-11' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (12, N'Scalpel Blades', 3, 200, CAST(N'2024-01-12' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (13, N'Surgical Sutures', 4, 250, CAST(N'2024-01-13' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (14, N'Tongue Depressors', 0.2, 1000, CAST(N'2024-01-14' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (15, N'Saline Solution', 8, 300, CAST(N'2024-01-15' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (16, N'Antibiotic Ointment', 6, 400, CAST(N'2024-01-16' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (17, N'Surgical Masks', 1.5, 500, CAST(N'2024-01-17' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (18, N'Face Shields', 12, 200, CAST(N'2024-01-18' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (19, N'Sterile Drapes', 7, 150, CAST(N'2024-01-19' AS Date), 0)
INSERT [dbo].[Supply] ([id], [materialName], [price], [quantity], [createdAt], [isDeleted]) VALUES (20, N'Elastic Bandages', 3.5, 250, CAST(N'2024-01-20' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Supply] OFF
GO
SET IDENTITY_INSERT [dbo].[SupplyAssignDetail] ON 

INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (1, 2, 1, 20, CAST(N'2024-01-01' AS Date), N'Active', N'Used for wound dressing', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (2, 2, 2, 50, CAST(N'2024-01-02' AS Date), N'Active', N'Administered injections', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (3, 2, 3, 30, CAST(N'2024-01-03' AS Date), N'Active', N'For examination', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (4, 2, 4, 100, CAST(N'2024-01-04' AS Date), N'Active', N'Preventive measure', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (5, 2, 5, 200, CAST(N'2024-01-05' AS Date), N'Active', N'For cleaning', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (6, 2, 6, 300, CAST(N'2024-01-06' AS Date), N'Active', N'For swabbing', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (7, 2, 7, 50, CAST(N'2024-01-07' AS Date), N'Active', N'Used in surgery', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (8, 2, 8, 20, CAST(N'2024-01-08' AS Date), N'Active', N'For IV administration', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (9, 2, 9, 15, CAST(N'2024-01-09' AS Date), N'Active', N'For temperature checking', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (10, 2, 10, 10, CAST(N'2024-01-10' AS Date), N'Active', N'For blood pressure monitoring', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (11, 2, 11, 5, CAST(N'2024-01-11' AS Date), N'Active', N'For auscultation', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (12, 2, 12, 25, CAST(N'2024-01-12' AS Date), N'Active', N'For surgical incisions', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (13, 2, 13, 40, CAST(N'2024-01-13' AS Date), N'Active', N'For wound closure', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (14, 2, 14, 100, CAST(N'2024-01-14' AS Date), N'Active', N'For oral examinations', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (15, 2, 15, 60, CAST(N'2024-01-15' AS Date), N'Active', N'For hydration', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (16, 2, 16, 80, CAST(N'2024-01-16' AS Date), N'Active', N'For wound care', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (17, 2, 17, 50, CAST(N'2024-01-17' AS Date), N'Active', N'For surgery', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (18, 2, 18, 20, CAST(N'2024-01-18' AS Date), N'Active', N'For face protection', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (19, 2, 19, 25, CAST(N'2024-01-19' AS Date), N'Active', N'Used in surgery', 0)
INSERT [dbo].[SupplyAssignDetail] ([id], [treatmentsheetId], [supplyId], [quantity], [startDate], [status], [observationDetail], [isDeleted]) VALUES (20, 2, 20, 30, CAST(N'2024-01-20' AS Date), N'Active', N'For wound compression', 0)
SET IDENTITY_INSERT [dbo].[SupplyAssignDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[TreatmentSheet] ON 

INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (2, 1, N'Stable condition', 0, CAST(N'2024-01-01' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (3, 2, N'Improving', 0, CAST(N'2024-01-02' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (4, 3, N'Critical condition', 0, CAST(N'2024-01-03' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (5, 4, N'Recovering well', 0, CAST(N'2024-01-04' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (6, 5, N'Under observation', 0, CAST(N'2024-01-05' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (7, 6, N'Stable condition', 0, CAST(N'2024-01-06' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (8, 7, N'Critical condition', 0, CAST(N'2024-01-07' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (9, 8, N'Improving', 0, CAST(N'2024-01-08' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (10, 9, N'Recovering well', 0, CAST(N'2024-01-09' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (11, 10, N'Under observation', 0, CAST(N'2024-01-10' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (12, 11, N'Stable condition', 0, CAST(N'2024-01-11' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (13, 12, N'Improving', 0, CAST(N'2024-01-12' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (14, 13, N'Critical condition', 0, CAST(N'2024-01-13' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (15, 14, N'Recovering well', 0, CAST(N'2024-01-14' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (16, 15, N'Under observation', 0, CAST(N'2024-01-15' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (17, 16, N'Stable condition', 0, CAST(N'2024-01-16' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (18, 17, N'Improving', 0, CAST(N'2024-01-17' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (19, 18, N'Critical condition', 0, CAST(N'2024-01-18' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (20, 19, N'Recovering well', 0, CAST(N'2024-01-19' AS Date))
INSERT [dbo].[TreatmentSheet] ([id], [medicalRecordId], [currentCondition], [isDeleted], [createdAt]) VALUES (21, 20, N'Under observation', 0, CAST(N'2024-01-20' AS Date))
SET IDENTITY_INSERT [dbo].[TreatmentSheet] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (1, N'John Doe', N'1234567890', N'123 Main St', N'Male', 30, CAST(N'2024-01-01' AS Date), N'Nurse')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (2, N'Jane Smith', N'0987654321', N'456 Elm St', N'Female', 28, CAST(N'2024-01-02' AS Date), N'Doctor')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (3, N'Robert Brown', N'1112131415', N'789 Oak St', N'Male', 40, CAST(N'2024-01-03' AS Date), N'Patient')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (4, N'Emily Johnson', N'1617181920', N'101 Pine St', N'Female', 35, CAST(N'2024-01-04' AS Date), N'Nurse')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (5, N'Michael Davis', N'2122232425', N'202 Cedar St', N'Male', 50, CAST(N'2024-01-05' AS Date), N'Doctor')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (6, N'Sarah Miller', N'2627282930', N'303 Birch St', N'Female', 32, CAST(N'2024-01-06' AS Date), N'Nurse')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (7, N'William Wilson', N'3132333435', N'404 Maple St', N'Male', 45, CAST(N'2024-01-07' AS Date), N'Doctor')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (8, N'Jessica Moore', N'3637383940', N'505 Walnut St', N'Female', 29, CAST(N'2024-01-08' AS Date), N'Nurse')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (9, N'David Taylor', N'4142434445', N'606 Chestnut St', N'Male', 55, CAST(N'2024-01-09' AS Date), N'Doctor')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (10, N'Laura Anderson', N'4647484950', N'707 Redwood St', N'Female', 34, CAST(N'2024-01-10' AS Date), N'Nurse')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (11, N'James Thomas', N'5152535455', N'808 Willow St', N'Male', 38, CAST(N'2024-01-11' AS Date), N'Doctor')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (12, N'Lisa Jackson', N'5657585960', N'909 Sycamore St', N'Female', 26, CAST(N'2024-01-12' AS Date), N'Nurse')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (13, N'Paul White', N'6162636465', N'1010 Ash St', N'Male', 48, CAST(N'2024-01-13' AS Date), N'Doctor')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (14, N'Nancy Harris', N'6667686970', N'1111 Poplar St', N'Female', 31, CAST(N'2024-01-14' AS Date), N'Nurse')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (15, N'George Martin', N'7172737475', N'1212 Hickory St', N'Male', 60, CAST(N'2024-01-15' AS Date), N'Doctor')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (16, N'Karen Lee', N'7677787980', N'1313 Magnolia St', N'Female', 27, CAST(N'2024-01-16' AS Date), N'Nurse')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (17, N'Charles Hall', N'8182838485', N'1414 Cypress St', N'Male', 42, CAST(N'2024-01-17' AS Date), N'Doctor')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (18, N'Susan Young', N'8687888990', N'1515 Fir St', N'Female', 33, CAST(N'2024-01-18' AS Date), N'Nurse')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (19, N'Steven King', N'9192939495', N'1616 Dogwood St', N'Male', 47, CAST(N'2024-01-19' AS Date), N'Doctor')
INSERT [dbo].[User] ([userId], [name], [number], [address], [gender], [age], [createdAt], [role]) VALUES (20, N'Patricia Wright', N'9697989990', N'1717 Holly St', N'Female', 36, CAST(N'2024-01-20' AS Date), N'Nurse')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Bed]  WITH CHECK ADD FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([id])
GO
ALTER TABLE [dbo].[Bed]  WITH CHECK ADD FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([medicalRecordId])
REFERENCES [dbo].[MedicalRecord] ([id])
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD FOREIGN KEY([doctorId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD FOREIGN KEY([nurseId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD FOREIGN KEY([patientId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[MedicineAssignDetail]  WITH CHECK ADD FOREIGN KEY([medicineId])
REFERENCES [dbo].[Medicine] ([id])
GO
ALTER TABLE [dbo].[MedicineAssignDetail]  WITH CHECK ADD FOREIGN KEY([treatmentsheetId])
REFERENCES [dbo].[TreatmentSheet] ([id])
GO
ALTER TABLE [dbo].[ServiceAssignDetail]  WITH CHECK ADD FOREIGN KEY([serviceId])
REFERENCES [dbo].[Service] ([id])
GO
ALTER TABLE [dbo].[ServiceAssignDetail]  WITH CHECK ADD FOREIGN KEY([treatmentsheetId])
REFERENCES [dbo].[TreatmentSheet] ([id])
GO
ALTER TABLE [dbo].[SupplyAssignDetail]  WITH CHECK ADD FOREIGN KEY([supplyId])
REFERENCES [dbo].[Supply] ([id])
GO
ALTER TABLE [dbo].[SupplyAssignDetail]  WITH CHECK ADD FOREIGN KEY([treatmentsheetId])
REFERENCES [dbo].[TreatmentSheet] ([id])
GO
ALTER TABLE [dbo].[TreatmentSheet]  WITH CHECK ADD FOREIGN KEY([medicalRecordId])
REFERENCES [dbo].[MedicalRecord] ([id])
GO
