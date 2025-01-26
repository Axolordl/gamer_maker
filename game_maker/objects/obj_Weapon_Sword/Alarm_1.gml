/// @desc Create Hitbox in the Slash Frame
//if (sprite_index == attack_side) {
//	if (image_xscale == -1) {
//		//create a mirrored hitbox for swinging left
//		var hitbox = instance_create_layer(x - 5, y, "Character_Class", obj_Hitbox_Sword_Swing_Right);
//		hitbox.image_xscale = -1;
//	} else {
//		//create a hitbox for swinging right
//		var hitbox = instance_create_layer(x + 5, y, "Character_Class", obj_Hitbox_Sword_Swing_Right);
//		hitbox.image_xscale = 1;
//	}
//}

//if (sprite_index == attack_down) {
//	var hitbox = instance_create_layer(x, y, "Character_Class", obj_Hitbox_Sword_Swing_Down);
//}

//if (sprite_index == attack_up) {
//	var hitbox = instance_create_layer(x, y, "Character_Class", obj_Hitbox_Sword_Swing_Up);
//}

var hitbox = noone;
switch (sprite_index) {
	case attack_down:
		hitbox = instance_create_layer(x, y, "Character_Class", obj_Hitbox_Sword_Swing_Down);
		break;
	case attack_up:
		hitbox = instance_create_layer(x, y, "Character_Class", obj_Hitbox_Sword_Swing_Up);
		break;
	case attack_right:
		hitbox = instance_create_layer(x, y, "Character_Class", obj_Hitbox_Sword_Swing_Right);
		break;
	case attack_left:
		hitbox = instance_create_layer(x, y, "Character_Class", obj_Hitbox_Sword_Swing_Left);
		break;
	default:
		hitbox = noone;
}



