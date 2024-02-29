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
		if (self = obj_slug) {/*sprite_index = spr_slugup*/}
		y -= walksp
		break;
	case "R":
		if (self = obj_slug) {sprite_index = spr_slugright}
		x += walksp
		break;
	case "D":
		if (self = obj_slug) {/*sprite_index = spr_slugdown*/}
		y += walksp;
		break;
	case "L":
		if (self = obj_slug) {sprite_index = spr_slugleft}
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
				audio_stop_all()
				audio_play_sound(mus_lose,1,0)
			}
		}
		instance_destroy()
		break;
}