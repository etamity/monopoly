extends Node

var date = OS.get_date();

var _total_days = 1 setget set_total_days, get_total_days;

func set_total_days(value):
    _total_days = value;

func get_total_days():
    return _total_days;
    
func get_day():
	return get_date()['day'];
	
func get_month():
	return get_date()['month'];

func get_year():
	return get_date()['year'];

func _leapYear(year):
    return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);

func get_date():
    var newDate = date.duplicate();
    var isLeapYear = _leapYear(newDate['year']);
    if (isLeapYear == true && newDate['month'] == 2 && newDate['day'] == 29):
        newDate['day'] = _total_days;
        newDate['month'] = 3;
    else: 
        newDate['day'] = newDate['day'] + _total_days;
    var timestamp = OS.get_unix_time_from_datetime(newDate);
    return OS.get_datetime_from_unix_time(timestamp);

func _ready():
    pass
