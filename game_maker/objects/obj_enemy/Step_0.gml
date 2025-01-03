// // CODE

death();

if (collision_circle(x, y, 50, obj_player, false, false)) {
	saw_player = true;
}

if (instance_exists(obj_player) && saw_player == true) {
	//go_to_player();
	set_sprite();
	mp_linear_step_object(obj_player.x, obj_player.y, 0.8, obj_wall);
} else {
	set_sprite(IDLE);
}


//depth
depth = -bbox_bottom;

// // FUNCTIONS

// movement

function set_sprite(face="") { // THIS IS A BIT FUCKED
	direct = point_direction(x, y, obj_player.x, obj_player.y);
	show_debug_message(direct);
	
	if face != IDLE {
		if direct >= 0 {
			if direct >= 90 {
				if direct >= 270 {
					face = RIGHT
				} else {face = LEFT}
			} else {face = RIGHT;}
		}
	}
	sprite_index = sprite[face]
	mask_index = sprite[face] // redundant?
	
	
	//} else {
	//	sprite_index = sprite[LEFT] or sprite[RIGHT];
	//}
}

// ! Deprecated !
//function go_to_player(){
//	// go to player X
//	if (obj_player.x) != x{
//		if obj_player.x < x{
//			x -= movespeed;
//		} else {
//			x += movespeed;
//		}
//	}	
//	// go to player Y
//	if obj_player.y != y{
//		if obj_player.y < y{
//			y -= movespeed;
//		} else {
//			y += movespeed;
//		}
//	}
//}

function death() {
	if (hp <= 0) {
	 instance_destroy();
	}
}