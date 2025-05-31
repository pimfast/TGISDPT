/// @desc

if (instance_exists(target)) {
	if (x > target.x) {x -= proj_speed}
	if (x < target.x) {x += proj_speed}
	if (y > target.y) {y -= proj_speed}
	if (y < target.y) {y += proj_speed}
	image_angle = point_direction(x,y,target.x,target.y)
} else {
	if (!instance_exists(obj_enemyparent)) {
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
}