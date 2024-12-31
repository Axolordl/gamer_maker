//Draw Health Bar

//You can change the Value ,,0" f.e to animate the Health Bar
draw_sprite(spr_Health_Bar_Background, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_Health_Bar, 0, healthbar_x, healthbar_y, (hp / hp_max) * healthbar_width, healthbar_height);
//Other Option: (hp * 2); instead of  (hp / hp_max) * healthbar_width