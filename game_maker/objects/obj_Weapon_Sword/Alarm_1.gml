/// @desc Create Hitbox in the Slash Frame
if (sprite_index == attack_side) {
	if (image_xscale == -1) {
		//create a mirrored hitbox for swinging left
		var hitbox = instance_create_layer(x - 5, y, "Character_Class", obj_Hitbox_Sword_Swing_Side);
		hitbox.image_xscale = -1;
	} else {
		//create a hitbox for swinging right
		var hitbox = instance_create_layer(x + 5, y, "Character_Class", obj_Hitbox_Sword_Swing_Side);
		hitbox.image_xscale = 1;
	}
}

if (sprite_index == attack_down) {
	var hitbox = instance_create_layer(x, y, "Character_Class", obj_Hitbox_Sword_Swing_Down);
}
