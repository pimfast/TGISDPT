/// @desc

if (instance_exists(target)) {
	var slash = instance_create_layer(target.x,target.y,"Instances",obj_slash)
	slash.target = target
	slash.damage = attack_power
	ds_list_destroy(list);
}