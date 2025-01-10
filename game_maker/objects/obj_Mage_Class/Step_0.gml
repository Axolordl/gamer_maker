// Inherit the parent event
event_inherited();

// // Code

shoot();

// // Functions

function shoot() {
	if cooldown == 0 {
		if (mouse_check_button_pressed(mb_left)) {
			angle = point_direction(x, y, mouse_x, mouse_y); //The Direction in which we aim
			//To spawn the projectile in front of the weapon (Staff is 23px long)
			var offset_x = lengthdir_x(24, angle); 
			var offset_y = lengthdir_y(24, angle);
			var bullet_x = x + offset_x;
			var bullet_y = y + offset_y;
			var bullet = instance_create_layer(bullet_x, bullet_y, "Projectiles", obj_Player_Bullet);
			bullet.direction = angle;
			
			// reset cooldown
			cooldown = 0.5*60; // = ~0,5sec
		}	
	} else { cooldown -= 1;} // cool down
}
