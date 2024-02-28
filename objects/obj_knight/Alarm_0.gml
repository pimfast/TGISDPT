/// @desc

if (instance_exists(obj_enemyparent)) {
	if (point_in_circle(obj_enemyparent.x,obj_enemyparent.y,x+(sprite_width/2),y+(sprite_height/2),attack_range)) {
		var arrow = instance_create_layer(x,y,"Instances",obj_arrow)
		arrow.target = obj_enemyparent
		arrow.damage = attack_power
	}
}

alarm_set(0,gamespeed_microseconds*0.01)