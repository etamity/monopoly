var _date = OS.get_date();

const DAYS_OF_MONTHS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

func get_day():
	return get_date()['day'];
	
func get_month():
	return get_date()['month'];

func get_year():
	return get_date()['year'];

func _leapYear(year):
    return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);

func _isvalid_day(day, month, year):
	var max_day = DAYS_OF_MONTHS[month];
	var isLeapYear = _leapYear(year);
	if (isLeapYear == true && month == 2):
		max_day += 1
	return day <= max_day; 

func get_date(days = 0):
	var newDate = _date.duplicate();
	var isLeapYear = _leapYear(newDate['year']);
	if _isvalid_day(newDate['day'], newDate['month'], newDate['year']):
		newDate['day'] = newDate['day'] + days;
	else: 
		newDate['day'] = days;
		newDate['month'] += newDate['month'];
	var timestamp = OS.get_unix_time_from_datetime(newDate);
	return OS.get_datetime_from_unix_time(timestamp);

func get_date_string(days = 0):
	var date = self.get_date(days);
	return '{day}/{month}/{year}'.format(date);

func _ready():
    pass
