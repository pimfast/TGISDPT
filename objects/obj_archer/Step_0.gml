/// @desc

if (upgradeprogressA == 1) {spritetip = "tipgreen"}
if (upgradeprogressA == 2) {spritetip = "tipblue"}
if (upgradeprogressA >= 3) {spritetip = "tipred"}
	
if (upgradeprogressB == 1) {spritearrow = "arrowblue"}
if (upgradeprogressB == 2) {spritearrow = "arrowred"}
if (upgradeprogressB >= 3) {spritearrow = "arrowgreen"}
	
if (upgradeprogressC == 1) {spritebandana = "bandanared"}
if (upgradeprogressC == 2) {spritebandana = "bandanagreen"}
if (upgradeprogressC >= 3) {spritebandana = "bandanablue"}

if (image_index >= 3) {
	//this actually does nothing since upgraded archers don't do the shooting animation
	//so this is all for changing back i think
	
	sprite_index = asset_get_index("spr_archer_"+spritetip+"_"+spritearrow+"_"+spritebandana)
	
	if ((upgradeprogressA > 3 || upgradeprogressB > 3 || upgradeprogressC > 3) && ((upgradeprogressA >= 3) && (upgradeprogressB >= 3) && (upgradeprogressC >= 3))) {
		sprite_index = spr_archer_ultimate
	}
	
}

list = ds_list_create();
var _num = collision_circle_list(x+(sprite_width/2), y+(sprite_height/2), attack_range*16, obj_enemyparent, false, true, list, false);
if (_num > 0) {
	switch (targettingpriority) {
		case "first":
			target = (list[| 0])
			if (alarm_get(0) == -1) {
				alarm_set(0,gamespeed_microseconds*(60/attack_speed))
			}
	        break;
		case "strong":
	        break;
	    case "last":
	        for (var i = 0; i < _num; ++i;) {
				target = (list[| i])
				if (alarm_get(0) == -1) {
					alarm_set(0,gamespeed_microseconds*(60/attack_speed))
				}
			}
	        break;
		case "smart":
	        break;
	    default:
	        // code here
	        break;
	}
	//image_xscale *-= sign(target.x - x);
}
ds_list_destroy(list);