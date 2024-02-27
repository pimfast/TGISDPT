/// @desc

audio_stop_all()

if (room == rm_menu) {
	audio_play_sound(mus_menu,1,1)
	window_set_cursor(cr_none)
	exit;
}

window_set_cursor(cr_default)
cash = 190
defense_points = 10

timetowave = 5
alarm_set(0,60)

global.waves = []

switch (room) {
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
		array_set(global.path, 49, "END");
		
		global.wave1 = []
		array_set(global.wave1, 0, "baddie");
		array_set(global.wave1, 2, "baddie");
		array_set(global.wave1, 4, "baddie");
		array_set(global.wave1, 6, "baddie");
		array_set(global.wave1, 8, "baddie");
		array_set(global.wave1, 10, "baddie");
		array_set(global.wave1, 12, "baddie");
		array_set(global.wave1, 14, "baddie");
		array_set(global.wave1, 16, "baddie");
		array_set(global.wave1, 18, "baddie");
		
		global.wave2 = []
		array_set(global.wave2, 0, "baddie");
		array_set(global.wave2, 1, "slug");
		array_set(global.wave2, 2, "baddie");
		array_set(global.wave2, 3, "slug");
		array_set(global.wave2, 4, "baddie");
		array_set(global.wave2, 5, "slug");
		array_set(global.wave2, 6, "baddie");
		array_set(global.wave2, 7, "slug");
		array_set(global.wave2, 8, "baddie");
		array_set(global.wave2, 9, "slug");
		array_set(global.wave2, 10, "baddie");
		
		global.wave3 = []
		array_set(global.wave3, 0, "baddie");
		array_set(global.wave3, 2, "baddie");
		array_set(global.wave3, 4, "baddie");
		array_set(global.wave3, 6, "bigbaddie");
		
		global.wave4 = []
		array_set(global.wave4, 0, "slug");
		array_set(global.wave4, 1, "slug");
		array_set(global.wave4, 2, "slug");
		array_set(global.wave4, 3, "slug");
		array_set(global.wave4, 4, "slug");
		array_set(global.wave4, 10, "slug");
		array_set(global.wave4, 11, "slug");
		array_set(global.wave4, 12, "slug");
		array_set(global.wave4, 13, "slug");
		array_set(global.wave4, 14, "slug");
		array_set(global.wave4, 15, "slug");
		array_set(global.wave4, 16, "slug");
		array_set(global.wave4, 17, "slug");
		array_set(global.wave4, 18, "slug");
		array_set(global.wave4, 19, "slug");
		
		global.wave5 = []
		array_set(global.wave5, 0, "bigbaddie");
		array_set(global.wave5, 2, "bigbaddie");
		array_set(global.wave5, 4, "bigbaddie");
		
		array_push(
			global.waves, 
			global.wave1,global.wave2,global.wave3,global.wave4,global.wave5
		)
        break;
}

enemynumber = 0
selectedenemy = 0
currentwave = array_first(global.waves)