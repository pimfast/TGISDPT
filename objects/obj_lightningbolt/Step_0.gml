/// @desc

if (instance_exists(target)) {
	if (x > target.x) {x -= proj_speed}
	if (x < target.x) {x += proj_speed}
	if (y > target.y) {y -= proj_speed}
	if (y < target.y) {y += proj_speed}
	image_angle = point_direction(x,y,target.x,target.y)
} else {
	instance_destroy()
}