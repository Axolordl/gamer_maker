// // Code

// Inherit the parent event
event_inherited();

//Call a script which decides what to do in which state of the Enemy
set_Enemy_State();

//set states
if (hp <= 0) {
	state = "Death";
}



show_debug_message(state);
show_debug_message(hp);


	
if state != "Death" {
	if (instance_exists(obj_player) && saw_player == true) {
		state = "Move";	
	} else {
		state = "Idle";
	}
}







//if (instance_exists(obj_player) && saw_player == true) {
//	//Moves the Enemy to the Player position while avoiding obstacles
//	movespeed = 0.7;
//	mp_potential_step_object(obj_player.x, obj_player.y, movespeed, obj_wall);
//	set_sprite();
//} else {
//	//If there is no Player, dont move
//	movespeed = 0;
//	saw_player = false;
//	set_sprite();
//}

//check_to_create_dust();

// // Functions

function Move_To_Player_Melee() {
	movespeed = 0.7;
	mp_potential_step_object(obj_player.x, obj_player.y, movespeed, obj_wall);
}
