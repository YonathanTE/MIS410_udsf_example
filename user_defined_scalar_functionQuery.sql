		CREATE FUNCTION udsf_numVisitsInYear (
					@userID CHAR(16)
					, @browseYear INT 
					)
		RETURNS INT
		AS
		BEGIN

		DECLARE @totalVisits INT;

		SET @totalVisits = (
					SELECT COUNT(DISTINCT BS.SessionID) AS [Number of Visits] 
			
					FROM BROWSINGSESSION BS 

					WHERE YEAR(BS.dateTimeBegin) = @browseYear
					AND 
						  BS.[ID] = @userID

					GROUP BY BS.[ID]
			)
		IF @totalVisits IS NULL
				SET @totalVisits = 0

RETURN @totalVisits
END