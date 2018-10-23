extends Node

var player_reducers = preload('res://scripts/reducers/player_reducers.gd').new();
var system_reducers = preload('res://scripts/reducers/system_reducers.gd').new();
var actions = preload('res://scripts/game/actions.gd').new();
var store = preload('res://scripts/game/store.gd').new();
var action_types = preload('res://scripts/game/action_types.gd');

# Called when the node enters the scene tree for the first time.
func _ready():
	store.create({
		'player': player_reducers,
		'system': system_reducers
		})
	pass # Replace with function body.

func _on_store_changed(name, state):
	print (name, state)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
