/// @desc

//if this works like how i think it should then it would look like a slug
if (image_index == 1) {
	speed = 0
}

switch(dir){
	case "U":
		//sprite_index = spr_slugup
		break;
	case "R":
		sprite_index = spr_slugright
		break;
	case "D":
		//sprite_index = spr_slugdown
		break;
	case "L":
		sprite_index = spr_slugleft
		break;
	default:
		break;
}