// Inherit the parent event
event_inherited();

//OLD SPOT WHERE WEAPON WAS DRAWN BEFORE MAKING IT IN A WEAPON OBJECT

//// Bestimme die Waffe-Position basierend auf der Animation
//var frame = floor(image_index); // Aktueller Frame der Animation
//var weapon_x = x;
//var weapon_y = y;


//switch (face) {
//	case DOWN: 
//	switch (frame) {
//		case 0: weapon_x += 3; weapon_y -= 3; break;
//		case 1: weapon_x += 3; weapon_y -= 2; break;
//		case 2: weapon_x += 3; weapon_y -= 3; break;
//		case 3: weapon_x += 3; weapon_y -= 2; break;
//		default: weapon_x += 3; weapon_y -= 3; break;
//	}
//	break; // Beendet den Block für DOWN

//	case RIGHT: 
//	switch (frame) {
//		case 0: weapon_x -= 1; weapon_y -= 1; break;
//		case 1: weapon_x = x; weapon_y -= 1; break;
//		case 2: weapon_x -= 1; weapon_y -= 1; break;
//		case 3: weapon_x -= 2; weapon_y -= 1; break;
//		default: weapon_x -= 1; weapon_y -= 1; break;
//	}
//	break; // Beendet den Block für RIGHT
	
//	case LEFT: 
//	switch (frame) {
//		case 0: weapon_x += 1; weapon_y -= 3; break;
//		case 1: weapon_x = x; weapon_y -= 3; break;
//		case 2: weapon_x += 1; weapon_y -= 3; break;
//		case 3: weapon_x += 2; weapon_y -= 3; break;
//		default: weapon_x += 1; weapon_y -= 3; break;
//	}
//	break; // Beendet den Block für LEFT
	
//	case UP: 
//	switch (frame) {
//		case 0: weapon_x += 3; weapon_y -= 4; break;
//		case 1: weapon_x += 3; weapon_y -= 5; break;
//		case 2: weapon_x += 3; weapon_y -= 4; break;
//		case 3: weapon_x += 3; weapon_y -= 5; break;
//		default: weapon_x += 3; weapon_y -= 4; break;
//	}
//	break; // Beendet den Block für UP
	
//	default: weapon_x = x; weapon_y = y; break;
//}

//if (face == LEFT) {
//	//IF we are moving to the left we have to rotate the weapon to the left (90)
//	draw_sprite_ext(spr_Knight_Sword, 0, weapon_x, weapon_y, 1, 1, 90, c_white, 1);
//} else {
//	//IF we are moving Up we have to draw the weaopon first and after that the player, so that the weapon is behind the player
//	if (face == UP) {
//		draw_sprite_ext(spr_Knight_Sword, 0, weapon_x, weapon_y, 1, 1, 0, c_white, 1);
//		draw_self();
//	} else {
//		draw_self();
//		draw_sprite_ext(spr_Knight_Sword, 0, weapon_x, weapon_y, 1, 1, 0, c_white, 1);
//		}
//}





