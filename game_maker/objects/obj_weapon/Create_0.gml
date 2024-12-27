offset_x = -6;
offset_y = -7;

//unarmed
weapons[0] = ds_map_create();
ds_map_add(weapons[0],"sprite", -1);
ds_map_add(weapons[0],"recoil", 0);
ds_map_add(weapons[0],"recoil_push", 0);
ds_map_add(weapons[0],"damage", 0);
ds_map_add(weapons[0],"projectile", -1);
ds_map_add(weapons[0],"startup", 0);
ds_map_add(weapons[0],"length", 0);
ds_map_add(weapons[0],"cooldown", 0);
ds_map_add(weapons[0],"bulletspeed", 0);
ds_map_add(weapons[0],"automatic", false);

//shotgun
weapons[1] = ds_map_create();
ds_map_add(weapons[1],"sprite", spr_shotgun);
ds_map_add(weapons[1],"recoil", 3);
ds_map_add(weapons[1],"recoil_push", 0);
ds_map_add(weapons[1],"damage", 1);
ds_map_add(weapons[1],"projectile", obj_bullet);
ds_map_add(weapons[1],"startup", 0);
ds_map_add(weapons[1],"length", 18);
ds_map_add(weapons[1],"cooldown", 3);
ds_map_add(weapons[1],"bulletspeed", 7);
ds_map_add(weapons[1],"automatic", false);

weapon = 0;
ammo[array_length(weapons)-1] = 0
ammo[0] = -1;

changeWeapon(0);

current_cd = 0;
current_delay = -1;
current_recoil = 0;