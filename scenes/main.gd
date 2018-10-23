extends Node

onready var global = get_node('/root/global');
onready var store = global.store;
onready var actions = global.actions;

func end_round():
	#next day
	#experince increased
	pass



func _ready():
	store.subscribe(self, '_on_store_changed');
	pass # Replace with function body.

#func _process(delta):
#	pass


func _on_Button_pressed():
	store.dispatch(actions.game_end_round())
	pass # Replace with function body.


func _on_store_changed(name, state):
	print (name, state)