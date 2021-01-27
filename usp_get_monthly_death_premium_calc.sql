USE [test_2021]
GO

DROP PROCEDURE IF EXISTS [dbo].[usp_get_monthly_death_premium_calc]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_get_monthly_death_premium_calc]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[usp_get_monthly_death_premium_calc] AS' 
END
GO

-- =============================================
-- Author:		<Kunal>
-- Create date: <26/01/2021>
-- Description:	<proc created to fetch the monthly death premium calculation>
-- =============================================
ALTER PROCEDURE [dbo].[usp_get_monthly_death_premium_calc]
	@Death_Sum_Insured numeric(18,6)
	,@Occupation varchar(100)
	,@age int	
	, @Monthly_Premium numeric(18,6) output
AS
BEGIN
if @Death_Sum_Insured is null or @Occupation is null or @age is null 
RAISERROR (15600,-1,-1, 'usp_get_monthly_death_premium_calc')
 select @Occupation
	declare @factor numeric(5,2)
	select @factor = factor from [dbo].[t_Factor_Rating] fr with(nolock)
	join [dbo].[t_Rating_Occupation] ro with(nolock) on fr.Rating = ro.Rating
	where ro.Occupation = @Occupation
	
	select @Monthly_Premium = (@Death_Sum_Insured * @factor * @age)/1000 * 12

	return @Monthly_Premium
END
GO


