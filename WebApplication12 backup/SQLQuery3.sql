CREATE PROC Updadata_thruEmail

AS BEGIN

DECLARE @email_store AS varchar(250)

SELECT *
FROM Emaildata
WHERE Email = @email_store 

END
