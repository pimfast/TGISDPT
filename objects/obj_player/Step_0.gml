///@desc

//keyboard inputs
key_left = (keyboard_check(vk_left) || keyboard_check(ord("A")))
key_right = (keyboard_check(vk_right) || keyboard_check(ord("D")))
key_up = (keyboard_check(vk_up) || keyboard_check(ord("W")))
key_down = (keyboard_check(vk_down) || keyboard_check(ord("S")))
key_use = (keyboard_check_pressed(vk_control)) //|| keyboard_check_pressed(vk_space))

////reset movement variables
//moveX = 0
//moveY = 0

////get intended movement
//moveX = key_right - key_left
//moveY = key_down - key_up

////apply movement
//x += moveX
//y += moveY

//^ i don't know what i was thinking when i wrote that shit
//v i still don't know what i'm thinking writing this shit
vspeed = 0
hspeed = 0

if (key_left) {hspeed = walksp*-1; vspeed = 0}
if (key_right) {hspeed = walksp; vspeed = 0}
if (key_up) {hspeed = 0; vspeed = walksp*-1}
if (key_down) {hspeed = 0; vspeed = walksp}

//set direction
if (key_left) {
	sprite_index = spr_scatleft
}
if (key_right) {
	sprite_index = spr_scatright
}
if (key_up) {
	sprite_index = spr_scatup
}
if (key_down) {
	sprite_index = spr_scatdown
}

//change key_left into a negative number so you can go left
if (key_left > 0) {key_left *= -1}
if (key_up > 0) {key_up *= -1}

//horizontal collision
if (place_meeting(x+hspeed,y,obj_collision))
{
	
	hspeed = 0;
}


//vertical collision
if (place_meeting(x,y+vspeed,obj_collision))
{	
	
	vspeed = 0;
}

//don't JUDGE me STOP JUDGING ME!!!!!
if (speed == 0) {
	image_index = 0
}