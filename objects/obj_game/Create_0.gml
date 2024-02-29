/// @desc

global.paused = false
global.fastforward = false
global.heldtower = ""
global.occupied = [];

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