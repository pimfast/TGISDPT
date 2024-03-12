/// @desc

if (place_meeting(x,y,obj_player)) {
	audio_stop_all()
	audio_play_sound(snd_conscience,1,1)
	window_set_caption("Tower Defense")
	if (show_question("Inevitable?") == true) {
		//enable effects
		layer_enable_fx("Tiles",true)
		layer_enable_fx("Tiles_Foreground",true)
		layer_enable_fx("Instances",true)
		layer_enable_fx("Extraneous",true)
		layer_enable_fx("Assets",true)
		//bring the player back
		obj_player.x = 152
		obj_player.y = 496
		//block it off
		instance_create_layer(336,448,"Extraneous",obj_collision)
		var lay_idfg =  layer_get_id("Tiles_Foreground")
		var lay_id = layer_get_id("Tiles");
		
		var map_idfg = layer_tilemap_get_id(lay_idfg);
		var map_id = layer_tilemap_get_id(lay_id);
		
		var data1 = tilemap_get(map_id, 6, 0);
		var data2 = tilemap_get(map_id, 6, 2);
		
		tilemap_set_at_pixel(map_idfg, 0, 21, 26)
		
		tilemap_set_at_pixel(map_idfg, data1, 20, 26)
		tilemap_set_at_pixel(map_id, data2, 21, 26)
		tilemap_set_at_pixel(map_id, data2, 22, 26)
		//they remain
		global.wave7 = []
		array_set(global.wave7, 0, "3");
		array_push(global.wave7, "END");
		array_push(global.waves,global.wave7)
		obj_game.currentwave = 6
		obj_game.enemynumber = 0
		obj_game.cash += 100000
		while (instance_exists(obj_towerparent)) {
			unoccupy(obj_towerparent.x,obj_towerparent.y)
			instance_destroy(obj_towerparent)
		}
		truth = true
		window_set_caption("tower defense grame")
	}
}

if (truth == true) {
	audio_play_sound(mus_level2,0,1)
}