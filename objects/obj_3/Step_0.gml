/// @desc

walked++;
if(walked % (16/walksp) == 0){
	
	realwalked++;
}
if( ! is_undefined(global.path[realwalked]) && global.path[realwalked] != 0){
	dir = global.path[realwalked];
}

x += walksp

if (dir == "END") {
	//made it to goal
	obj_game.defense_points = -3
	layer_destroy("Buttons");layer_destroy("Extraneous");layer_destroy("Tiles_Foreground");layer_destroy("Instances");layer_destroy("Player");layer_destroy("Assets");layer_destroy("Tiles");
	audio_stop_all()
	audio_play_sound(mus_lose,999,0,10,0,0.1)
	show_message("It can end for now.")
	show_message("it always does")
	show_message("I hope it will be brief.")
	game_end()
}