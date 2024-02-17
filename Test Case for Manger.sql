-- valid casese

--SELECT from [dbo].[Instructor]

SELECT * FROM [dbo].[Instructor]
--

INSERT INTO dbo.Instructor
(
   
   Ins_Name,
   Ins_Address,
    Ins_Phone
)
VALUES
(       
    N'eman',    
      
    DEFAULT,
    '01001234561'  
    )

DELETE FROM [dbo].[Instructor] WHERE Ins_Id = 110

--
SELECT * FROM [dbo].[Course]


DELETE FROM dbo.Course WHERE Crs_Id= 3



-- Invalid Cases [dbo].[Course]


SELECT* FROM[dbo].[Intake]
--can insert according to permissions

INSERT INTO dbo.Intake
(
   
    Int_name,
	 Branch_id
)
VALUES
(   
    '2010' -- Intake_Name - varchar(20)
	,1
)
-- cant delete any row
DELETE FROM dbo.Intake WHERE Int_id = 1


