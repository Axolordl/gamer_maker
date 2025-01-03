// Draw Self
draw_self();

// Set the Font for the Button Text
draw_set_font(f_Button_Text);

// Set the X and Y alignment to the middle
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw the given Text
draw_text(x, y, button_text);

// Reset the X and Y alignment to the top left
draw_set_halign(fa_left);
draw_set_valign(fa_top);