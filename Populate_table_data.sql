IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_Factor_Rating]') AND type in (N'U'))
begin
	truncate table t_Factor_Rating
end

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_Rating_Occupation]') AND type in (N'U'))
begin
	truncate table t_Rating_Occupation
end


insert into t_Factor_Rating
select 'Professional',1.0
union
select 'White Collar',1.25
union
select 'Light Manual',1.50
union
select 'Heavy Manual',1.75

print 'Data inserted into Factor Rating table..'

insert into t_Rating_Occupation
select 'Cleaner', 'Light Manual'
union
select 'Doctor', ' Professional'
union
select 'Author', ' White Collar'
union
select 'Farmer', ' Heavy Manual'
union
select 'Mechanic', ' Heavy Manual'
union
select 'Florist', ' Light Manual'

print 'Data inserted into Rating Occupation table..'


select * from t_Factor_Rating
select * from t_Rating_Occupation