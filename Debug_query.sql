declare @mo numeric (18,6)
declare @occupation varchar(100)
set @occupation = 'Cleaner'
/*
the inputs can be changed as per the requirements.
the monthly premium and age are test data.
*/
exec usp_get_monthly_death_premium_calc 100,@occupation ,25, @mo output
select @mo
