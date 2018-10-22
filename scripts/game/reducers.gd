extends Node

onready var boots = get_node('/root/boots');

func game(state, action):
	var action_types = boots.get_action_types();
	var store = boots.get_store();
	print(boots);
	if action['type'] == action_types['GAME_REST_STATE']:
		var new_state = store.copy(state);
		new_state['time'] = 16;
		return new_state;
	return state
	
func _ready():
	print('_ready', boots);
	