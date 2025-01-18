/// @desc Create Hitbox in the Slash Frame

if (image_xscale == -1) {
	//create a mirrored hitbox for swinging left
	var hitbox = instance_create_layer(x - 5, y, "Character_Class", obj_Hitbox_Parent);
	hitbox.image_xscale = -1;
} else {
	//create a hitbox for swinging right
	var hitbox = instance_create_layer(x + 5, y, "Character_Class", obj_Hitbox_Parent);
	hitbox.image_xscale = 1;
}