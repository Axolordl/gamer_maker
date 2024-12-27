x = obj_player.x + offset_x;
y = obj_player.y + offset_y;
//aims towards the mouse
direction = point_direction(x, y, mouse_x, mouse_y);

//flip the weapon 
if (direction > 90 && direction < 270) {
	image_yscale = -1;
	depth -= 1;
} else {
	image_yscale = 1;
	depth += 1;
  }
  
image_angle = direction;

//if weapon is automatic you can hold the button and if not u have to press it 
var mouseb;
if (automatic) {
	mouseb = mouse_check_button(mb_left);
} 
else {
	mouseb = mouse_check_button_pressed(mb_left);
}	

//We check if the Mouse is/got pressed and check if the cooldown is 0, if yes we set the cooldown again
if (mouseb) {
	if (current_cd == 0)
	{
		current_cd = cooldown;
		current_delay = startup;
	}
}

if (current_delay == 0 && projectile != -1)
{
	if (ammo[weapon] != 0) {
		with (instance_create_depth(x + lengthdir_x(length, direction),y + lengthdir_y(length, direction),3 , projectile))
		{
			direction = other.direction;
			speed = other.bulletspeed;
		}
		ammo[weapon] -= 1;
	}
}
	
current_delay = max(-1, current_delay - 1);

if (current_delay == -1) {
	current_cd = max(0, current_cd - 1);	
}

depth = obj_player.depth - 1;
