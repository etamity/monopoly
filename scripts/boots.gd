extends Node

var _init_state = load('res://scripts/game/init_state.gd')
var _reducers = load('res://scripts/game/reducers.gd').new();
var _actions = load('res://scripts/game/actions.gd').new();
var _store = load('res://scripts/game/store.gd').new();
var _action_types = load('res://scripts/game/action_types.gd');

func get_init_state():
	return _init_state;

func get_reducers():
	return _reducers;
	
func get_actions():
	return _actions;
	
func get_store():
	return _store;
	
func get_action_types():
	return _action_types;

# Called when the node enters the scene tree for the first time.
func _ready():
	_store.create([
		{'name': 'game', 'instance': _reducers}
	], [])
	print(_init_state.state());
	_store.dispatch(_actions.game_reset_state())
	print(_store.get_state());
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
