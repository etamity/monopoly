extends Node

func load_json(path):
	var file = File.new() # Makes our "new file"
	file.open(path, file.READ)
	var json = parse_json(file.get_as_text()) 
	file.close()
	return json

func save_json(path, json):
	var file = File.new() # Makes our "new file"
	file.open(path, File.WRITE)
	file.store_string(to_json(json))
	file.close()
	pass