declare @mo numeric (18,6)
exec usp_get_monthly_death_premium_calc 100,'Cleaner',25, @mo output
select @mo

	select factor from [dbo].[t_Factor_Rating] fr with(nolock)
	join [dbo].[t_Rating_Occupation] ro with(nolock) on fr.Rating = ro.Rating
	where ro.Occupation = 'Cleaner'