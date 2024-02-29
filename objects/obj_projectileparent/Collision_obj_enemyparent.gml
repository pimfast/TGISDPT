/// @desc

other.hp -= damage

if (other.hp <= 0) {
	instance_destroy(other)
} else {
	instance_create_layer(x,y,"Instances",obj_hiteffect)
}

instance_destroy()