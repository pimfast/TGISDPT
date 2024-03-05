/// @desc

list = ds_list_create();
var _num = collision_circle_list(x+(sprite_width/2), y+(sprite_height/2), attack_range, obj_enemyparent, false, true, list, false);
if (_num > 0)
{
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
		
}
ds_list_destroy(list);