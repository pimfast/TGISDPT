/// @desc

obj_game.cash += obj_game.selectedtower.towervalue*0.5
unoccupy(obj_game.selectedtower.x,obj_game.selectedtower.y)
audio_play_sound(sfx_chaching,1,0)
instance_destroy(obj_game.selectedtower)
instance_destroy()