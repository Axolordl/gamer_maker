// Inherit the parent event
event_inherited();

if (instance_exists(obj_player) && saw_player == true) {
	//Moves the Enemy to the Player position while avoiding obstacles
	movespeed = 0.7;
	mp_potential_step_object(obj_player.x, obj_player.y, movespeed, obj_wall);
	set_sprite();
} else {
	//If there is no Player, dont move
	movespeed = 0;
	saw_player = false;
	set_sprite();
}

check_to_create_dust();