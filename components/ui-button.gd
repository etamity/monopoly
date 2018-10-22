tool
extends Node2D

const button_path = "res://assets/gui/buttons";

export (String, "small", "medium", "long") var type = "medium" setget set_type, get_type

export(String) var label = "button" setget set_label

func set_label(value):
	$"Label".text = value;

func set_type(value):
	print(value);
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
		self.type = "small"
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
