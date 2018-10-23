var action_types = preload('res://scripts/game/action_types.gd');

func game_reset_state():
	return {
		'type': action_types.GAME_REST_STATE
	}

func game_end_round():
	return {
		'type': action_types.GAME_END_ROUND
	}