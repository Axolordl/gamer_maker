// Inherit the parent event
event_inherited();

//Draw the sprite
draw_self();

//Draw the Health Bar
if (hp <= max_hp) {
	draw_healthbar (
	x - 5, 
	y - 21, 
	x + 5,
	y - 18, 
	(hp / max_hp) * 100,
	c_black,
	c_red,
	c_green,
	0,
	true,
	true
	)

}
