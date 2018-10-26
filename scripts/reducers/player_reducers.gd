var action_types = preload('res://scripts/game/action_types.gd');
var store = null;
var _state = {
	'time_caps': 16,
	'level': 1,
	'money': 1000,
	'reputaion': 0,
	'health': 100
}
func player(state = _state, action = {'type': null}):
	match action.type:
		action_types.GAME_REST_STATE:
			return _state;
		action_types.GAME_END_ROUND:
			var new_state = store.copy(state);
			new_state.time_caps = 16;
			new_state.health -= 1
			return new_state
	return state

	