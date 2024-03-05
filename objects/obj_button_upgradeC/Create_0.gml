/// @desc

name = "range up"
description = string(obj_game.selectedtower.attack_range)
cost = 35

showtext = false

sprite_index = spr_button_upgrade_rangeup

if (obj_game.selectedtowertype == obj_saw) {instance_destroy()}