var _date = OS.get_date();

func get_day():
	return get_date()['day'];
	
func get_month():
	return get_date()['month'];

func get_year():
	return get_date()['year'];

func get_date(days = 0):
	var new_date = _date.duplicate();
	var timestamp = OS.get_unix_time_from_datetime(new_date);
	var new_timestamp = timestamp + (days * 60 * 60 * 24)
	return OS.get_datetime_from_unix_time(new_timestamp);

func get_date_string(days = 0):
	var date = self.get_date(days);
	return '{day}/{month}/{year}'.format(date);

func _ready():
    pass
