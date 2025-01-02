// // CODE

//Check if Health is above 0, if not die
if (hp <= 0) {
	instance_destroy(self);	
}

// movement & speed
move_keys = get_move_keys()

if !instance_exists(obj_pauser) {
	calc_spd();
} else {
	pause();
}

would_collide();
move();

shoot();

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
	// check & set spd[X]
	if place_meeting(x + spd[X], y, obj_wall) == true {
		spd[X] = 0;
	}
	
	// check & set spd[Y]
	if place_meeting(x, y + spd[Y], obj_wall) == true {
		spd[Y] = 0;
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

function set_depth() {
	depth = -bbox_bottom;
}

function shoot() {
	if cooldown == 0 {
		if (mouse_check_button_pressed(mb_left)) {
			angle = point_direction(x, y, mouse_x, mouse_y); //The Direction in which we aim
			//To spawn the projectile in front of the weapon (Staff is 23px long)
			var offset_x = lengthdir_x(24, angle); 
			var offset_y = lengthdir_y(24, angle);
			var bullet_x = x + offset_x;
			var bullet_y = y + offset_y;
			var bullet = instance_create_layer(bullet_x, bullet_y, "Projectiles", obj_Bullet);
			bullet.direction = angle;
			
			// reset cooldown
			cooldown = 0.5*60; // = ~1sec
		}	
	} else { cooldown -= 1;} // cool down
}