// //Code

if (direction_already_set == false) {
	set_Dash_Dust_Sprite();
}

// //Functions

///@desc sets the dash dust sprite depending on the player dash direction
function set_Dash_Dust_Sprite() {
	direction_already_set = true;
	switch (obj_Knight_Class.face) {
		case RIGHT:
			sprite_index = dash_dust_right;
			break;
		case LEFT:
			sprite_index = dash_dust_left;
			break;
		case UP: 
			sprite_index = dash_dust_up;
			break;
		case DOWN: 
			sprite_index = dash_dust_down;
			break;
		default:
			break;
	}
}