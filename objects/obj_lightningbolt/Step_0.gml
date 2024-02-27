//desc

if (instance_exists(target)) {
	if (x > target.x) {image_angle = 180;x -= 1}
	if (x < target.x) {image_angle = 0;x += 1}
	if (y > target.y) {image_angle = 90;y -= 1}
	if (y < target.y) {image_angle = 270;y += 1}
} else {
	instance_destroy()
}