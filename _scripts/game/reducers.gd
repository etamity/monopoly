extends Node
onready var action_types = get_node('/root/action_types');
onready var store = get_node('/root/store');

func game(state, action):
	print(boots);
	if action['type'] == action_types['GAME_REST_STATE']:
		var new_state = store.copy(state);
		new_state['time'] = 16;
		return new_state;
	return state
	
func _ready():
	print('_ready', boots);
	