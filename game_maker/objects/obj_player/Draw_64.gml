//Draw Health Bar

//If The Player is warping it shouldnt Display The Bars
if (!instance_exists(obj_warp)) {
	//You can change the Value ,,0" f.e to animate the Health Bar
	draw_sprite_stretched(spr_Health_Bar_Background, 0, healthbar_x, healthbar_y, healthbar_width, healthbar_height);
	draw_sprite_stretched(spr_Health_Bar, 0, healthbar_x, healthbar_y, (hp / hp_max) * healthbar_width, healthbar_height);

	//Draw Stamina Bar
	draw_sprite_stretched(spr_Stamina_Bar_Background, 0, staminabar_x, staminabar_y, staminabar_width, stamiinabar_height);
	draw_sprite_stretched(spr_Stamina_Bar, 0, staminabar_x, staminabar_y, (stamina / stamina_max) * staminabar_width, stamiinabar_height);
}

