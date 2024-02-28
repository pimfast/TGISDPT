/// @desc

switch (dir) {
    case "L":
        dir = "U"
		sprite_index = spr_cannonup
        break;
    case "U":
        dir = "R"
		sprite_index = spr_cannonright
        break;
    case "R":
        dir = "D"
		sprite_index = spr_cannondown
        break;
    case "D":
        dir = "L"
		sprite_index = spr_cannonleft
        break;
    default:
        break;
}