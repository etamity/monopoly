extends Node

func game_reset_state():
	var boots = get_node('/root/boots');
	var action_types = boots.get_action_types();

	return {
		'type': action_types.GAME_REST_STATE
	}