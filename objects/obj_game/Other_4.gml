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
		audio_play_sound(mus_level1,1,1);
		
		global.path = [];
		array_set(global.path, 5, "D");
		array_set(global.path, 9, "R");
		array_set(global.path, 11, "D");
		array_set(global.path, 13, "R");
		array_set(global.path, 15, "U");
		array_set(global.path, 17, "R");
		array_set(global.path, 21, "U");
		array_set(global.path, 24, "L");
		array_set(global.path, 27, "U");
		array_set(global.path, 29, "R");
		array_set(global.path, 35, "D");
		array_set(global.path, 40, "R");
		array_set(global.path, 42, "U");
		array_set(global.path, 46, "R");
		array_set(global.path, 60, "R");
		

        // code here
        break;
    default:
        // code here
        break;
}