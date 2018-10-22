tool
extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const button_path = "res://assets/gui/buttons";

export (String, "accept", "cancel", "download", "help", "home", "left", "music", "play", "plus", "profile", "records", "right", "round", "settings", "shop", "volume") var type = "" setget set_type, get_type

func set_type(value):
	var button = $"TextureButton";
	if (type != value and button):
		type = value;
		button.texture_normal = load(button_path + '/normal/' + type + '.png');
		button.texture_pressed = load(button_path + '/click/' + type + '.png');
		button.texture_hover = load(button_path + '/hover/' + type + '.png');
		button.texture_disabled = load(button_path + '/lock/' + type + '.png');

func get_type():
	return type;
	
# Called when the node enters the scene tree for the first time.
func _ready():
	if (self.type == ""):
		self.type = "accept"
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
