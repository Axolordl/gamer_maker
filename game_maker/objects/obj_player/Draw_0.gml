//Draws the Player
draw_self()

//Aims towards the Mouse Direction
var angle = point_direction(x, y, mouse_x, mouse_y) - 90;  //We need this -90, because the sprite isnt rotating right

//Draws the Weapon
var weapon_x = x;
var weapon_y = y;
draw_sprite_ext(spr_Staff, 0, weapon_x, weapon_y, 1, 1, angle, c_white, 1);