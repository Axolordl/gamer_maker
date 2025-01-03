
if (floor(image_index) == 3 && !damage_done) {
    obj_player.hp -= 5;
    damage_done = true;
}

// Reset damage flag, wenn der `image_index` nicht mehr 3 ist
if (floor(image_index) != 3) {
    damage_done = false;
}