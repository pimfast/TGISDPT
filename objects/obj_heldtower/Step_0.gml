/// @desc

x = floor(mouse_x/16) * 16;
y = floor(mouse_y/16) * 16;

if (isOccupied(x,y)) {
	image_alpha = 0.5
	image_blend = c_red
} else {
	image_alpha = 1
	image_blend = c_white
	switch (global.heldtower) {
	    case "archer":
	        sprite_index = spr_archer_n_n_n
	        break;
	    case "cannon":
			switch (dir) {
			    case "L":
					sprite_index = spr_cannonleft
			        break;
			    case "U":
					sprite_index = spr_cannonup
			        break;
			    case "R":
					sprite_index = spr_cannonright
			        break;
			    case "D":
					sprite_index = spr_cannondown
			        break;
			    default:
			        break;
			}
	        break;
	    case "knight":
	        sprite_index = spr_knight
	        break;
	    case "saw":
	        sprite_index = spr_saw
	        break;
	    case "wizard":
	        sprite_index = spr_wizard
	        break;
	    default:
	        sprite_index = noone
	        break;
	}
}