/// @desc

if (instance_exists(target)) {
	if (sprite_index == spr_archer_n_n_n) {sprite_index = spr_archershoot}
	if (sprite_index == spr_archer_n_n_n) {image_index = 0}
	var arrow = instance_create_layer(x+(sprite_width/2),y+(sprite_height/2),"Instances",obj_arrow)
	arrow.target = target
	arrow.damage = attack_power
	
	arrow.proj_speed = proj_speed
	if (string_count("arrowred",sprite_get_name(sprite_index)) >= 1) {arrow.sprite_index = spr_n_arrowred}
	if (string_count("arrowblue",sprite_get_name(sprite_index)) >= 1) {arrow.sprite_index = spr_n_arrowblue}
	if (string_count("arrowgreen",sprite_get_name(sprite_index)) >= 1) {arrow.sprite_index = spr_n_arrowgreen}
	
	ds_list_destroy(list);
}