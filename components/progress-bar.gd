tool
extends Node2D

const assets_path = "res://assets/gui/bars";

export (String, "health", "mana", "shield") var type = "health" setget set_type, get_type

export (int) var progress = 10 setget set_progress, get_progress

func set_progress(value):
	progress = value;
	($"TextureProgress").set_value(value);

func get_progress():
	return progress;
	
func set_type(value):
	var progress_bar = $"TextureProgress";
	var icon = $"Icon";
	if (type != value and progress_bar):
		type = value;
		progress_bar.texture_progress = load(assets_path + '/' + type + '_progress.png');
		icon.texture = load(assets_path + '/' + type + '_icon.png');

func get_type():
	return type;
# Called when the node enters the scene tree for the first time.
func _ready():
	if (self.type == ""):
		self.type = "health"
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
