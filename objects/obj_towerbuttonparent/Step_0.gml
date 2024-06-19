/// @desc step (parent)

if (itemprice > obj_game.cash) {
	image_index = 1
} else {
	image_index = 0
}

if (global.heldtower == itemtype) {
	image_xscale = 0.4
	image_yscale = 0.4
} else {
	image_xscale = 0.5
	image_yscale = 0.5
}