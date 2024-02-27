/// @desc

if (instance_exists(obj_baddie)) {
	if (point_in_circle(obj_baddie.x,obj_baddie.y,x+(sprite_width/2),y+(sprite_height/2),attack_range)) {
		var arrow = instance_create_layer(x,y,"Instances",obj_arrow)
		arrow.target = obj_baddie
		arrow.damage = attack_power
	}
}

alarm_set(0,gamespeed_microseconds*0.01)