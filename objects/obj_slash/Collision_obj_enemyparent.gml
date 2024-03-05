/// @desc

if (diddamage == false) {
	target.hp -= damage
	if (target.hp <= 0) {
		instance_destroy(target)
	} else {
		//instance_create_layer(slash.x,slash.y,"Instances",obj_hiteffect)
	}
	diddamage = true
}
