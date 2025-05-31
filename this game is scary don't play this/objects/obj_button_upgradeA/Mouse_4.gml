/// @desc

if (obj_game.cash >= cost) {
	obj_game.cash -= cost
	obj_game.selectedtower.towervalue += cost
	obj_game.selectedtower.attack_power += 0.5
	
	audio_play_sound(sfx_upgrade3,1,0)
	
	if (obj_game.selectedtowertype == obj_archer) {
		obj_game.selectedtower.upgradeprogressA += 1
	
		//do the sprite right (ignore the shooting animation for now (and by that i mean forever))
		var spritetip = "n"
		var spritearrow = "n"
		var spritebandana = "n"
		if (obj_game.selectedtower.upgradeprogressA = 1) {spritetip = "tipgreen"}
		if (obj_game.selectedtower.upgradeprogressA = 2) {spritetip = "tipblue"}
		if (obj_game.selectedtower.upgradeprogressA = 3) {spritetip = "tipred"}
	
		if (obj_game.selectedtower.upgradeprogressB = 1) {spritearrow = "arrowblue"}
		if (obj_game.selectedtower.upgradeprogressB = 2) {spritearrow = "arrowred"}
		if (obj_game.selectedtower.upgradeprogressB = 3) {spritearrow = "arrowgreen"}
	
		if (obj_game.selectedtower.upgradeprogressC = 1) {spritebandana = "bandanared"}
		if (obj_game.selectedtower.upgradeprogressC = 2) {spritebandana = "bandanagreen"}
		if (obj_game.selectedtower.upgradeprogressC = 3) {spritebandana = "bandanablue"}
	
		obj_game.selectedtower.sprite_index = asset_get_index("spr_archer_"+spritetip+"_"+spritearrow+"_"+spritebandana)
	
		if ((obj_game.selectedtower.upgradeprogressA > 3 || obj_game.selectedtower.upgradeprogressB > 3 || obj_game.selectedtower.upgradeprogressC > 3) && (obj_game.selectedtower.upgradeprogressA >= 3) && (obj_game.selectedtower.upgradeprogressB >= 3) && (obj_game.selectedtower.upgradeprogressC >= 3)) {
			obj_game.selectedtower.sprite_index = spr_archer_ultimate
		}
	}
}