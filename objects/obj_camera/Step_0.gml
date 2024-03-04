if (instance_exists(target))
{
	cameraX = clamp( target.x - (cameraWidth/2) , 0, room_width - cameraWidth);
	cameraY = clamp( target.y - (cameraHeight/2) , 0, room_height - cameraHeight);

	camera_set_view_pos(view_camera[0], cameraX, cameraY);
}

//camera shake
//only works in rooms larger than the camera
cameraX += random_range(-cameraShake, cameraShake);
cameraY += random_range(-cameraShake, cameraShake);

if (cameraShake > 0){
	cameraShake -= 0.2;
	if (cameraShake < 0) cameraShake = 0;
}

//if (room == rm_gameBIG) {
//	layer_x("Background", cameraX * 0.9);
	
//	layer_y("Background", cameraY * 0.9);
//}

//set camera position
camera_set_view_pos(view_camera[0], cameraX, cameraY);