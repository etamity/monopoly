static func random(rang):
	return randi() % rang;

static func random_array(arr):
	return arr[random(arr.size())]

static func random_dict(dict):
	return dict[random_array(dict.keys().size())]

static func price(min_v = null, max_v = null, dec = null, symbol = null, factor = null):
	if min_v == null:
		min_v = 1
	if max_v == null:
		max_v = 1000
	if dec == null:
		dec = 2
	if symbol == null:
		symbol = ''

	var randValue = rand_range(min_v, max_v);
	var format_string = '{symbol}{price}';
	var price = (round(randValue * pow(10, dec)) / pow(10, dec));
	if (min_v < 0 || max_v < 0):
		price = 0.00
	return format_string.format({ 'symbol': symbol, 'price': price })