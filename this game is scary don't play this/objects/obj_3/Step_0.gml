/// @desc

walked++;
if(walked % (16/walksp) == 0){
	
	realwalked++;
}
if( ! is_undefined(global.path[realwalked]) && global.path[realwalked] != 0){
	dir = global.path[realwalked];
}

x += walksp

if (room == rm_level2 && x >= 416) {
	//made it to goal
	obj_game.defense_points = -3
	//what's the idea here? just deleting every layer? why?? commenting out because i need to not have the instances layer destroyed
	//layer_destroy("Buttons");layer_destroy("Extraneous");layer_destroy("Tiles_Foreground");layer_destroy("Instances");layer_destroy("Player");layer_destroy("Assets");layer_destroy("Tiles");
	audio_group_stop_all(ag_mus)
	audio_play_sound(mus_lose,999,0,10,0,0.5)
	show_message("it can't...")
	show_message("It always will")
	show_message("...hope it will be brief.")
	show_message("I know.")
	game_end()
}