pet_w = 0;			// Default: 36 (The buddy's width)
run_speed = 0;		// Default: 3
max_run_dist = 0;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)

kbg_threshold = 0.4;    //The threshold for knockback growth for a hitbox in order for a crit to be possible.
crit_chance = 0;        //Current crit chance.
crit_chance_base = 0;   //The base crit chance when the ledger is empty. Written from 1 to 100.
crit_chance_max = 80;   //The max possible crit chance.
crit_chance_damage_full = 150;  //The amount of damage it takes to max out crit chance.
crit_damage_multiplier = 2; //Multiplier on damage for crit hitboxes.
crit_kb_multiplier = 2; //Multiplier on knockback for crit hitboxes.
crit_hp_multiplier = 2; //Hitpause multiplier for a crit hitbox that gets past the knockback growth threshold.
read_time = 20 * 60;    //The number of frames to check back for filling the damage ledger.
ledger[0,1] = 0;        //The ledger for keeping track of how much damage was dealt and when.
ledger[0,0] = 0;

//Sounds
crit_hit = sound_get("sfx_crit_hit");
crit_vfx_sprite = sprite_get("crit_effect");
crit_vfx = hit_fx_create(crit_vfx_sprite, 60);