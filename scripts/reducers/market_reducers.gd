var action_types = preload('res://scripts/game/action_types.gd');
var store = null;
var _state = {
	'days': 450,
}
func market(state = _state, action = {'type': null}):
	match action.type:
		action_types.GAME_END_ROUND:
			return state
	return state

	