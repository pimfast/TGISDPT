/// @desc
with (other) {
	if (other.disabled == false) {
			hp -= other.attack_power

			audio_play_sound(sfx_bworm,1,0)

			if (hp <= 0) {
				instance_destroy()
			}
			other.tbdisabled = true
			other.alarm[0] = gamespeed_microseconds*(60/other.attack_speed)
	}
}