/// @desc

audio_stop_all()

if (room == rm_menu) {
	alarm_set(0,-1)
	alarm_set(1,-1)
	audio_group_load(ag_mus)
	audio_group_load(ag_sfx)
	audio_play_sound(mus_menu,1,1)
	window_set_cursor(cr_none)
	exit;
}

window_set_cursor(cr_default)
cash = 180
maxdp = 10
defense_points = maxdp

timetowave = 15
alarm_set(0,60)

global.waves = []

switch (room) {
	case rm_level1:
		music = audio_play_sound(mus_level1,1,0);
		enemyspawn_y = 71
		
		// initial occupied tiles on the map grid 20x12 0=empty 1=occupied
		global.occupied = [];
		global.occupied[0]  = [1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0];
		global.occupied[1]  = [1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
		global.occupied[2]  = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
		global.occupied[3]  = [0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0];
		global.occupied[4]  = [1,1,1,1,1,0,0,0,0,1,0,0,0,0,0,1,0,1,1,1];
		global.occupied[5]  = [0,0,0,0,1,0,0,0,0,1,1,1,1,0,0,1,0,1,0,0];
		global.occupied[6]  = [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0];
		global.occupied[7]  = [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0];
		global.occupied[8]  = [1,0,0,0,1,1,1,0,1,1,1,1,1,0,0,1,1,1,0,0];
		global.occupied[9]  = [1,1,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0];
		global.occupied[10] = [1,1,1,0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1];
		global.occupied[11] = [1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1];

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
		array_push(global.wave1, "END");
		
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
		array_push(global.wave2, "END");
		
		global.wave3 = []
		array_set(global.wave3, 0, "baddie");
		array_set(global.wave3, 2, "baddie");
		array_set(global.wave3, 4, "baddie");
		array_set(global.wave3, 6, "bigbaddie");
		array_push(global.wave3, "END");
		
		global.wave4 = []
		array_set(global.wave4, 0, "slug");
		array_set(global.wave4, 1, "slug");
		array_set(global.wave4, 2, "slug");
		array_set(global.wave4, 3, "slug");
		array_set(global.wave4, 4, "slug");
		array_set(global.wave4, 5, "bigbaddie");
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
		array_push(global.wave4, "END");
		
		global.wave5 = []
		array_set(global.wave5, 0, "bigbaddie");
		array_set(global.wave5, 2, "bigbaddie");
		array_set(global.wave5, 4, "bigbaddie");
		array_set(global.wave5, 6, "bigbaddie");
		array_set(global.wave5, 8, "baddie");
		array_push(global.wave5, "END");
		
		array_push(
			global.waves, 
			global.wave1,global.wave2,global.wave3,global.wave4,global.wave5
		)
        break;
	case rm_level2:
		music = audio_play_sound(mus_level2,1,1);
		enemyspawn_y = 487
		
		// initial occupied tiles on the map grid 40x50 0=empty 1=occupied
		global.occupied = [];
		global.occupied[0]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[1]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[2]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[3]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[4]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[5]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[6]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[7]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[8]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[9]  = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[10] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[11] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0];
		global.occupied[12] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,1,0,0,1,1,1,1];
		global.occupied[13] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,0,0,0,1,1,1,1,1];
		global.occupied[14] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1];
		global.occupied[15] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[16] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[17] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[18] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[19] = [1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[20] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[21] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[22] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[23] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[24] = [0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[25] = [0,0,0,0,1,1,1,1,0,0,0,0,0,1,1,0,0,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[26] = [0,0,0,0,1,1,1,1,1,1,0,0,0,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[27] = [0,1,0,0,1,1,1,0,0,1,0,0,1,0,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[28] = [0,0,0,0,0,0,0,0,1,1,0,0,1,0,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[29] = [0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[30] = [1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[31] = [0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0,0,1,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[32] = [0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,1,1,1,1,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[33] = [0,0,0,1,1,1,1,1,0,0,0,1,0,1,0,0,0,0,0,0,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[34] = [0,0,0,0,1,1,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[35] = [0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,1,1,0,0,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[36] = [0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[37] = [0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[38] = [0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[39] = [1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[40] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[41] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[42] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[43] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[44] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[45] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[46] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[47] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[48] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		global.occupied[49] = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
		
		global.path = [];
		array_set(global.path, 8, "U");
		array_set(global.path, 9, "R");
		array_set(global.path, 10, "U");
		array_set(global.path, 11, "R");
		array_set(global.path, 12, "U");
		array_set(global.path, 14, "L");
		array_set(global.path, 18, "U");
		array_set(global.path, 21, "R");
		array_set(global.path, 22, "U");
		array_set(global.path, 23, "R");
		array_set(global.path, 28, "U");
		array_set(global.path, 29, "R");
		array_set(global.path, 30, "U");
		array_set(global.path, 32, "L");
		array_set(global.path, 34, "D");
		array_set(global.path, 36, "R");
		array_set(global.path, 37, "D");
		array_set(global.path, 38, "R");
		array_set(global.path, 41, "D");
		array_set(global.path, 47, "R");
		array_set(global.path, 49, "D");
		array_set(global.path, 50, "R");
		array_set(global.path, 52, "D");
		array_set(global.path, 55, "L");
		array_set(global.path, 58, "U");
		array_set(global.path, 60, "L");
		array_set(global.path, 62, "D");
		array_set(global.path, 63, "L");
		array_set(global.path, 64, "D");
		array_set(global.path, 65, "L");
		array_set(global.path, 66, "D");
		array_set(global.path, 71, "R");
		array_set(global.path, 74, "U");
		array_set(global.path, 76, "R");
		array_set(global.path, 78, "D");
		array_set(global.path, 80, "R");
		array_set(global.path, 85, "U");
		array_set(global.path, 86, "R");
		array_set(global.path, 87, "U");
		array_set(global.path, 93, "R");
		array_set(global.path, 98, "END");
		
		global.wave1 = []
		array_set(global.wave1, 0, "slug");
		array_set(global.wave1, 2, "baddie");
		array_set(global.wave1, 4, "baddie");
		array_set(global.wave1, 6, "baddie");
		array_set(global.wave1, 8, "baddie");
		array_set(global.wave1, 10, "baddie");
		array_set(global.wave1, 12, "baddie");
		array_set(global.wave1, 14, "baddie");
		array_set(global.wave1, 16, "baddie");
		array_set(global.wave1, 18, "baddie");
		array_push(global.wave1, "END");
		
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
		array_push(global.wave2, "END");
		
		global.wave3 = []
		array_set(global.wave3, 0, "bigbaddie");
		array_set(global.wave3, 2, "bigbaddie");
		array_set(global.wave3, 4, "bigbaddie");
		array_set(global.wave3, 6, "baddie");
		array_push(global.wave3, "END");
		
		global.wave4 = []
		array_set(global.wave4, 0, "slug");
		array_set(global.wave4, 1, "slug");
		array_set(global.wave4, 2, "slug");
		array_set(global.wave4, 3, "slug");
		array_set(global.wave4, 4, "slug");
		array_set(global.wave4, 5, "bigbaddie");
		array_set(global.wave4, 10, "slug");
		array_set(global.wave4, 11, "slug");
		array_set(global.wave4, 12, "slug");
		array_set(global.wave4, 13, "slug");
		array_set(global.wave4, 14, "slug");
		array_set(global.wave4, 15, "baddie");
		array_set(global.wave4, 16, "slug");
		array_set(global.wave4, 17, "slug");
		array_set(global.wave4, 18, "slug");
		array_set(global.wave4, 19, "slug");
		array_set(global.wave4, 20, "slug");
		array_push(global.wave4, "END");
		
		global.wave5 = []
		array_set(global.wave5, 0, "bigbaddie");
		array_set(global.wave5, 2, "bigbaddie");
		array_set(global.wave5, 4, "bigbaddie");
		array_set(global.wave5, 6, "bigbaddie");
		array_set(global.wave5, 8, "bigbaddie");
		array_push(global.wave5, "END");
		
		global.wave6 = []
		array_set(global.wave6, 0, "baddie");
		array_set(global.wave6, 1, "slug");
		array_set(global.wave6, 2, "bigbaddie");
		array_set(global.wave6, 5, "baddie");
		array_set(global.wave6, 6, "slug");
		array_set(global.wave6, 7, "bigbaddie");
		array_set(global.wave6, 10, "baddie");
		array_set(global.wave6, 11, "slug");
		array_set(global.wave6, 12, "bigbaddie");
		array_set(global.wave6, 18, "bigbaddie");
		array_set(global.wave6, 19, "bigbaddie");
		array_set(global.wave6, 20, "bigbaddie");
		array_set(global.wave6, 21, "bigbaddie");
		array_set(global.wave6, 22, "bigbaddie");
		array_set(global.wave6, 23, "bigbaddie");
		array_set(global.wave6, 24, "bigbaddie");
		array_set(global.wave6, 35, "slug");
		array_push(global.wave6, "END");
		
		array_push(
			global.waves, 
			global.wave1,global.wave2,global.wave3,global.wave4,global.wave5,global.wave6
		)
		break;
}

enemynumber = 0
chosenenemy = 0

currentwave = 0; //array_first(global.waves);
selectedtower = undefined