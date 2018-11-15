
/****** Script for SelectTopNRows command from SSMS  ***** Added comment line here */
--Added some changes within VSCode
--Not sure what got added
SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate] AS B
      ,[MaritalStatus]
      ,CASE Gender
		WHEN 'M' THEN 'Male'
		ELSE 'Female'
		END as 'Gender'

		 ,
		 CASE 
			WHEN Gender = 'M' Then 
				'Male'
			WHEN Gender = 'F' and MaritalStatus = 'S' Then 
				'Single Female'
			ELSE 
				'Cannot find'
		END as 'Gender2'

      ,month([HireDate]) as HireDateMonth
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
	  
  FROM [HumanResources].[Employee] as A

 SELECT	JobTitle, count(JobTitle)
 FROM HumanResources.Employee
 GROUP BY JobTitle
 HAVING count(JobTitle) > 2
 
 --Advanced to be used later
 SELECT * FROM  (SELECT	JobTitle, count(JobTitle) as TitleCount
	 FROM HumanResources.Employee
	 GROUP BY JobTitle) as Table1
	 WHERE Table1.TitleCount > 2

	 
