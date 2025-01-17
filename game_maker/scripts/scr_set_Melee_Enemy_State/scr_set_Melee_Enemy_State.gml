function set_Enemy_State() {
	switch (state) {
		case "Death": //Der Fall wenn der Gegner Tot ist
			instance_destroy(self);
			break;
		case "Idle": //Der Fall wenn der Gegner gerade spawnt oder der Spieler stirbt
			set_Idle_State();
			set_sprite();
			detect_Player_inRadius(); //Im Idle State soll er nach dem Spieler scannen
			break;
		case "Move": //Der Fall wenn der Gegner den Spieler sieht
			Move_To_Player_Melee(); //Bewegt sich zum Spieler
			set_sprite(); 
			check_to_create_dust();
			break;
		default:
			set_Idle_State();
	}
}