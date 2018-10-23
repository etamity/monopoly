var action_types = preload('res://scripts/game/action_types.gd');
var store = null;
var calendar = preload('res://scripts/libs/calendar.gd').new();
var _state = {
	'days': 450,
	'date': calendar.get_date_string()
}
func system(state = _state, action = {'type': null}):
	match action.type:
		action_types.GAME_END_ROUND:
			var new_state = store.copy(state);
			new_state.days += 1;
			new_state.date = calendar.get_date_string(new_state.days);
			return new_state
	return state

	