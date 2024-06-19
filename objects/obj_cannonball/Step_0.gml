/// @desc

lifespan -= 1

if (!instance_exists(obj_enemyparent)) || (lifespan <= 0) {
	instance_destroy()
}

switch (dir) {
	case "L":
	    x -= proj_speed
	    break;
	case "R":
	    x += proj_speed
	    break;
	case "U":
	    y -= proj_speed
	    break;
	case "D":
	    y += proj_speed
	    break;
	default:
		break;
}