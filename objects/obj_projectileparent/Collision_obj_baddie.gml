/// @desc

other.hp -= damage

audio_play_sound(sfx_bworm,1,0)

if (other.hp <= 0) {
	obj_game.cash += obj_baddie.value
	audio_play_sound(sfx_bworm,1,0)
}

instance_destroy()