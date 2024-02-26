/// @desc

x += walksp

if (hp <= 0) {
	instance_destroy()
}

if (x > 328) {
	//you a dumb dumb you lose a life
	with (obj_game) {
		audio_play_sound(sfx_bwam,1,0,5)
		defense_points -= obj_baddie.damage
		
		cash += obj_baddie.value
		if (defense_points <= 0) {
			instance_deactivate_all(true)
			instance_activate_object(obj_button_pause)
			audio_stop_all()
			audio_play_sound(mus_lose,1,0)
			alarm[1] = -1
		}
	}
	instance_destroy()
}