/// @desc

if (instance_exists(target)) {
	if (sprite_exists(asset_get_index("spr_archershoot_"+spritetip+"_"+spritearrow+"_"+spritebandana))) {
		if (sprite_index == asset_get_index("spr_archer_"+spritetip+"_"+spritearrow+"_"+spritebandana) || (sprite_index == spr_archer_ultimate)) {
			if ((upgradeprogressA > 3 || upgradeprogressB > 3 || upgradeprogressC > 3) && ((upgradeprogressA >= 3) && (upgradeprogressB >= 3) && (upgradeprogressC >= 3))) {
				sprite_index = spr_archershoot_ultimate
				image_index = 0
			} else {
				sprite_index = asset_get_index("spr_archershoot_"+spritetip+"_"+spritearrow+"_"+spritebandana)
				image_index = 0
			}
		}
	} else {
		sprite_index = spr_archershoot_n_n_n
		image_index = 0
	}
	var arrow = instance_create_layer(x+(sprite_width/2),y+(sprite_height/2),"Instances",obj_arrow)
	arrow.target = target
	arrow.damage = attack_power
	
	arrow.proj_speed = proj_speed
	arrow.sprite_index = asset_get_index("spr_arrow_"+spritetip+"_"+spritearrow)
	
	ds_list_destroy(list);
}