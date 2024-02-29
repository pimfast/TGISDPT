/// @desc

if (instance_exists(obj_enemyparent)) {
	var lightningbolt = instance_create_layer(x+(sprite_width/2),y+(sprite_height/2),"Instances",obj_lightningbolt)
	lightningbolt.target = obj_enemyparent
	lightningbolt.damage = attack_power
	
	lightningbolt.proj_speed = proj_speed
}

alarm_set(0,gamespeed_microseconds*60)