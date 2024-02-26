/// @desc

cash = 115
defense_points = 10

timetowave = 5
alarm_set(0,60)

audio_stop_all()
switch (room) {
    case rm_menu:
		audio_play_sound(mus_23,1,1)
		//audio_play_sound(mus_28,1,1)
        // code here
        break;
	case rm_level1:
		audio_play_sound(mus_level1,1,1)
		global.field = [
		0, 0, 0,
		0, 0, 0,
		0, 0, 0,
		]
        // code here
        break;
    default:
        // code here
        break;
}