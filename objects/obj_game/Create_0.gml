/// @desc

global.paused = false
global.fastforward = false
global.music_muted = true
global.sfx_muted = false
global.heldtower = ""
global.occupied = [];


////initialize upgrade specifications
//upgrade_tree_a_1 = "muay thai training"
//upgrade_tree_a_1.description = "damage up"
//upgrade_tree_a_1.icon = spr_button_upgrade_damageup
//upgrade_tree_a_1.cost = 50

//upgrade_tree_b_1 = "cocainesumption"
//upgrade_tree_b_1.description = "attack speed up"
//upgrade_tree_b_1.icon = spr_button_upgrade_attackspeed_up
//upgrade_tree_b_1.cost = 50

//upgrade_tree_a_1 = "lasik surgery"
//upgrade_tree_c_1.description = "range up"
//upgrade_tree_c_1.icon = spr_button_upgrade_rangeup
//upgrade_tree_c_1.cost = 50

//global.archerupgradetreeA = [upgrade_tree_a_1]
//global.archerupgradetreeB = [upgrade_tree_b_1]
//global.archerupgradetreeC = [upgrade_tree_c_1]

selectedtower = undefined

/**
 * Check against global.occupied
 * @var int x horizontal pixel location
 * @var int y vertical pixel location
 * @returns bool
 */
function isOccupied(x, y)
{
	// convert x,y to grid 16x16 on 20x12
	var grid_x = floor(x/16);
	var grid_y = floor(y/16);
	if(global.occupied[grid_y][grid_x] == 0){
		return false;
	}
	else{
		return true;
	}
}

/**
 * Occupy a space, assumes you already checked you can with isOccupied()
 * @var int x horizontal pixel location
 * @var int y vertical pixel location
 * @returns void
 */
function occupy(x, y)
{
	// convert x,y to grid 16x16 on 20x12
	var grid_x = floor(x/16);
	var grid_y = floor(y/16);
	global.occupied[grid_y][grid_x] = 1;
}

function unoccupy(x, y)
{
	// convert x,y to grid 16x16 on 20x12
	var grid_x = floor(x/16);
	var grid_y = floor(y/16);
	global.occupied[grid_y][grid_x] = 0;
}