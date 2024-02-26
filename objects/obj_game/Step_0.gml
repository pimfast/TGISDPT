/// @desc room change buttons

//if (keyboard_check_pressed(vk_lshift)) {room_goto_previous()}
//if (keyboard_check_pressed(vk_rshift)) {room_goto_next()}

if (keyboard_check_pressed(vk_space)) {
	switch (room) {
	    case rm_level1:
	        // code here
			room_goto_previous()
	        break;
	    default:
	        // code here
			room_goto_next()
	        break;
	}
}