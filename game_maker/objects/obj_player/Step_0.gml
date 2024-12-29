// // CODE

// movement & speed
move_keys = get_move_keys()

if !instance_exists(obj_pauser) {
	calc_spd();
} else {
	pause();
}

if !would_collide() {
	move();
}

// sprite stuff
set_face();
set_sprite();
set_depth();


// // FUNCTIONS

// controlls
function get_move_keys(){
	// check for arrow or wasd keys
	keys[UP] = max(keyboard_check(vk_up), keyboard_check(ord("W")));
	keys[DOWN] = max(keyboard_check(vk_down), keyboard_check(ord("S")));
	keys[LEFT] = max(keyboard_check(vk_left), keyboard_check(ord("A")));
	keys[RIGHT] = max(keyboard_check(vk_right), keyboard_check(ord("D")));
	
	return keys;
}


// wall collision
function would_collide(){
	if place_meeting(x + spd[X], y, obj_wall) == true {
		spd[X] = 0;
		return true;
	} else if place_meeting(x, y + spd[Y], obj_wall) == true {
		spd[Y] = 0;
		return true;
	} else {
		return false;
	}
}


// movement
function calc_spd(){
	spd[X] = (move_keys[RIGHT] -  move_keys[LEFT])* move_spd;
	spd[Y] = (move_keys[DOWN] -  move_keys[UP]) * move_spd;
}

function move(){
	x += spd[X];
	y += spd[Y];
}

// pause
function pause(){
	spd[X] = 0;
	spd[Y] = 0;
}


// sprite
function set_face(){
	// default
	// face = DOWN;
	
	// check xspd
	if spd[X] != 0 {
		if spd[X] > 0 {face = RIGHT} else {face = LEFT};
	}
	
	// check yspd
	if spd[Y] != 0 {
		if spd[Y] > 0 {face = DOWN} else {face = UP};
	}
}

function set_sprite(){
	if spd[X] == 0 && spd[Y] == 0{
		image_index = 0;
	} 
	mask_index = sprite[face];
	sprite_index = sprite[face];
}

function set_depth(){
	depth = -bbox_bottom;
}