extends Node

onready var global = get_node('/root/global');
onready var store = global.store;
onready var actions = global.actions;

var product_faker = load('res://scripts/libs/faker/product.gd').new()

func end_round():
	#next day
	#experince increased
	pass

func _ready():
	store.subscribe(self, '_on_store_changed');
	pass # Replace with function body.

func _on_Button_pressed():
	store.dispatch(actions.game_end_round())
	pass # Replace with function body.


func _on_store_changed(name, state):
	print(name, state)

func _on_Button2_pressed():
	print(product_faker.price());
	pass # Replace with function body.
