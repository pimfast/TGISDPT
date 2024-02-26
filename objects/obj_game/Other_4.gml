/// @desc

audio_stop_all()

if (room == rm_menu) {
	//audio_play_sound(mus_32,1,1)
	exit;
}

cash = 115
defense_points = 10

timetowave = 5
alarm_set(0,60)

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
		array_set(global.wave3, 1, "baddie");
		array_set(global.wave3, 2, "baddie");
		array_set(global.wave3, 3, "bigbaddie");
		
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
        break;
}

enemynumber = 0
selectedenemy = 0
currentwave = global.wave1