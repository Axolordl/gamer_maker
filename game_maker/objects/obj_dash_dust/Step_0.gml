// //Code

set_Dash_Dust_Sprite();

// //Functions

///@desc sets the dash dust sprite depending on the player dash direction
function set_Dash_Dust_Sprite() {
	switch (obj_Knight_Class.face) {
		case RIGHT:
			sprite_index = dash_dust_right;
			break;
		case LEFT:
			sprite_index = dash_dust_left;
			break;
		case UP: //Needs a Up Sprite
			sprite_index = dash_dust_right;
			break;
		case DOWN: //Needs a Down Sprite
			sprite_index = dash_dust_right;
			break;
		default:
			break;
	}
}