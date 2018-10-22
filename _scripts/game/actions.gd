extends Node

onready var boots = get_node('/root/boots');
onready var action_types = get_node('/root/action_types'); #load('res://scripts/game/action_types.gd');

func game_reset_state():
	return {
		'type': action_types.GAME_REST_STATE
	}