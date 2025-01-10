// Inherit the parent event
event_inherited();

//Draw the sprite
draw_self();

//Draw the Health Bar
if (hp <= max_hp) {
	draw_healthbar (
	x - 5, 
	y - 20, 
	x + 5,
	y - 17, 
	(hp / max_hp) * 100,
	c_black,
	c_red,
	c_green,
	0,
	true,
	true
	)
}

if saw_player && instance_exists(obj_player) {
//Aims towards the Mouse Direction
//We need this -90, because the sprite isnt rotating right
weapon_angle = point_direction(x, y, obj_player.x, obj_player.y) - 90;  
}

//Draws the Weapon
weapon_x = x;
weapon_y = y - 3;
draw_sprite_ext(spr_Enemy_Mage_Staff, 0, weapon_x, weapon_y, 1, 1, weapon_angle, c_white, 1);