// Inherit the parent event
event_inherited();

//Draw the sprite
draw_self();

//Draw the Health Bar
if (hp <= max_hp) {
	draw_healthbar (
	x - 5, 
	y - 15, 
	x + 5,
	y - 12, 
	(hp / max_hp) * 100,
	c_black,
	c_red,
	c_green,
	0,
	true,
	true
	)
}