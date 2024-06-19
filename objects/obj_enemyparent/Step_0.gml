/// @desc

walked++;
if(walked % (16/walksp) == 0){
	realwalked++;
}
if( ! is_undefined(global.path[realwalked]) && global.path[realwalked] != 0){
	dir = global.path[realwalked];
}

switch(dir){
	case "U":
		y -= walksp
		break;
	case "R":
		x += walksp
		break;
	case "D":
		y += walksp;
		break;
	case "L":
		x -= walksp;
		break;
	case "END":
		//made it to goal
		audio_play_sound(sfx_bwam,1,0,5)
		obj_game.defense_points -= damage
		obj_game.cash += cashvalue
		with (obj_game) {
			if (defense_points <= 0) {
				instance_deactivate_object(obj_enemyparent)
				obj_game.alarm[1] = -1
				audio_group_stop_all(ag_mus)
				audio_play_sound(mus_lose,1,0)
			}
		}
		instance_destroy()
		break;
}

//if (array_contains(conditions[],"buttered")) {
//	sprite_set_speed(sprite_index,sprite_get_speed(sprite_index)*2,gamespeed_fps)
//}