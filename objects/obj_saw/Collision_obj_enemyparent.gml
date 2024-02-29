/// @desc
with (other) {
	if (other.disabled == false) {
			hp -= other.attack_power

			if (hp <= 0) {
				instance_destroy()
			} else {
				instance_create_layer(x,y,"Instances",obj_hiteffect)
			}
			other.tbdisabled = true
			other.alarm[0] = gamespeed_microseconds*(60/other.attack_speed)
	}
}