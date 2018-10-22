extends Node

onready var init_state = get_node('/root/init_state');
onready var reducers = get_node('/root/reducers');
onready var actions = get_node('/root/actions');
onready var store = get_node('/root/store');
onready var action_types = get_node('/root/action_types');

# Called when the node enters the scene tree for the first time.
func _ready():
	store.create([
		{'name': 'game', 'instance': reducers}
	], [])
	print(init_state.state());
	store.dispatch(actions.game_reset_state())
	print(store.get_state());
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
