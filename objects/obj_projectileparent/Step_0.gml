/// @desc

if (instance_exists(target)) {
	if (x > target.x) {x -= 1}
	if (x < target.x) {x += 1}
	if (y > target.y) {y -= 1}
	if (y < target.y) {y += 1}
} else {
	instance_destroy()
}