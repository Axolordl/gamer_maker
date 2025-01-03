draw_self();
if (collision_circle(x, y, 15, obj_player, false, false)) {
	
	draw_set_font(f_PickUp_Class_Text);
	draw_set_color(c_green);
	
	// Set the X and Y alignment to the middle
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_transformed(x,y - 25, "Play Knight", 0.15, 0.15, 0);

	// Reset the X and Y alignment to the top left
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	//draw_text(x, y, "Pick Knight");
}
