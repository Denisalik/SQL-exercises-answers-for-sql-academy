UPDATE Timepair
SET (start_pair, end_pair)=(start_pair+'30 minutes'::interval, end_pair+'30 minutes'::interval)
