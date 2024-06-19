/// @desc

if (global.heldtower == itemtype) {
	global.heldtower = ""
	window_set_cursor(cr_default)
	instance_destroy(obj_heldtower)
	exit
}

if (obj_game.cash >= itemprice) {
	global.heldtower = itemtype
	window_set_cursor(cr_none)
	if (!instance_exists(obj_heldtower)) {instance_create_layer(x,y,"Extraneous",obj_heldtower)}
	obj_heldtower.dir = "L"
	switch (itemtype) {
			case "archer":
				obj_heldtower.sprite_index = spr_archer_n_n_n
				break;
			case "cannon":
				obj_heldtower.sprite_index = spr_cannonleft
				break;
			case "knight":
				obj_heldtower.sprite_index = spr_knight
				break;
			case "saw":
				obj_heldtower.sprite_index = spr_saw
				break;
			case "wizard":
				obj_heldtower.sprite_index = spr_wizard
				break;
	}
}