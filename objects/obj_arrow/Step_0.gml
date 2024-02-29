/// @desc

if (instance_exists(target)) {
	if (x > target.x) {image_angle = 180; x -= proj_speed}
	if (x < target.x) {image_angle = 0; x += proj_speed}
	if (y > target.y) {image_angle = 90; y -= proj_speed}
	if (y < target.y) {image_angle = 270; y += proj_speed}
} else {
	instance_destroy()
}  