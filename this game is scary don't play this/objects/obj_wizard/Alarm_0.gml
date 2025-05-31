/// @desc

if (instance_exists(obj_enemyparent)) {
	sprite_index = spr_wizardshoot
	image_index = 0
	var lightningbolt = instance_create_layer(x+(sprite_width/2),y+(sprite_height/2),"Instances",obj_lightningbolt)
	lightningbolt.target = target
	lightningbolt.damage = attack_power
	
	lightningbolt.proj_speed = proj_speed
}