//Compare current time to the oldest entry on the ledger to the current game time. If the time difference is greater than read_time, remove that entry from the list.
//If doing so would reduce the array height to 0, make that entry [0 0].
if(get_gameplay_time() - ledger[0,0] > read_time)
{
	if(array_length(ledger) <= 1)
	{
		ledger = 0;
		ledger[0,1] = 0;
		ledger[0,0] = 0;
	}
	else
	{
		var dummy_array = array_create(1,0);
		array_copy(dummy_array,0,ledger,1,array_length(ledger)-1);
		array_copy(dummy_array,0,ledger,1,array_length(ledger)-1);

		ledger = array_clone(dummy_array);
	}
}

// print_debug("ledger: " + string(ledger));
// if("rcb_hasCrit" in owner && owner.rcb_hasCrit)
// 	print_debug(string(owner.rcb_hasCrit));

//If the owner isn't performing an attack and they just landed a crit, clear the ledger and clear the crit flag.
if(!(owner.state == PS_ATTACK_GROUND || owner.state == PS_ATTACK_AIR))
{

		with(owner)
		{
			if("rcb_hasCrit" not in self)	//Check if owner already has the crit flag. If they don't, initialize it to false.
				rcb_hasCrit = false;
			if("rcb_critHit" not in self)	//Check if owner already has the crit hit flag. If they don't, initialize it to false.
				rcb_critHit = false;
			if("rcb_critAttack" not in self)	//Keeps track of what attack last crit.
				rcb_critAttack = 0;
			
			if(rcb_hasCrit)
			{
				if(rcb_critHit)
				{
					other.ledger = 0;	//Clear the ledger to prevent a "rich get richer" situation. At least more so than is intended.
					other.ledger[0,1] = 0;
					other.ledger[0,0] = 0;
				}

				rcb_hasCrit = false;	//Clear rcb_hasCrit.
				rcb_hasHit = false;		//Clear rcb_hasHit.
				rcb_critAttack = 0;		//Clear rcv_critAttack.
				// with(other) {print_debug("Crit Clear 0")}
			}

			if(rcb_critAttack != 0)
			{
				for(var rcb_i = 1; rcb_i <= get_num_hitboxes(rcb_critAttack); rcb_i++)
				{
					reset_hitbox_value(rcb_critAttack, rcb_i, HG_BASE_KNOCKBACK);
					reset_hitbox_value(rcb_critAttack, rcb_i, HG_KNOCKBACK_SCALING);
					reset_hitbox_value(rcb_critAttack, rcb_i, HG_BASE_HITPAUSE);
					reset_hitbox_value(rcb_critAttack, rcb_i, HG_HITPAUSE_SCALING);
					reset_hitbox_value(rcb_critAttack, rcb_i, HG_DAMAGE);
					reset_hitbox_value(rcb_critAttack, rcb_i, HG_HIT_SFX);
					reset_hitbox_value(rcb_critAttack, rcb_i, HG_VISUAL_EFFECT);
					// print_debug(string(rcb_i) + ":" + string(get_hitbox_value(rcb_critAttack, rcb_i, HG_DAMAGE)));
				}

				rcb_hasCrit = false;	//Clear rcb_hasCrit.
				rcb_hasHit = false;		//Clear rcb_hasHit.
				// with(other) {print_debug("Crit Clear 1")}
			}

			//failsafe
			if(get_gameplay_time() mod 10 == 0)
			{
				for(var rcb_i = 1; rcb_i <= 41; rcb_i++)
				{
					if(rcb_i != 2 || rcb_i != 3 || rcb_i != 39 || rcb_i != 40 || get_num_hitboxes(rcb_i) != 0)
					{
						for(var rcb_j = 1; rcb_j <= get_num_hitboxes(rcb_i); rcb_j++)
						{
							reset_hitbox_value(rcb_i, rcb_j, HG_BASE_KNOCKBACK);
							reset_hitbox_value(rcb_i, rcb_j, HG_KNOCKBACK_SCALING);
							reset_hitbox_value(rcb_i, rcb_j, HG_BASE_HITPAUSE);
							reset_hitbox_value(rcb_i, rcb_j, HG_HITPAUSE_SCALING);
							reset_hitbox_value(rcb_i, rcb_j, HG_DAMAGE);
							reset_hitbox_value(rcb_i, rcb_j, HG_HIT_SFX);
							reset_hitbox_value(rcb_i, rcb_j, HG_VISUAL_EFFECT);
							// with(other){print_debug(string(rcb_i) + ":" + string(get_hitbox_value(other.rcb_i, rcb_i, HG_DAMAGE)));}
						}
					}
				}
			}
		}
}

//If the owner initiates a move, calculate if it will be a crit and apply appropriate crit modifiers to the move.
else
{
	crit_chance = calc_crit_chance(crit_chance_base, crit_chance_max, crit_chance_damage_full, ledger);
	// print_debug(string(crit_chance));

	with(owner)
	{
		if(state_timer == 0 && window == 1)
		{
			if(random_func(0, 99, true) <= other.crit_chance)	//Generates a random number between 0 and 99. If it's less than or equal to the crit chance, set the crit flag.
				rcb_hasCrit = true;
			
			if(rcb_hasCrit)
			{
				rcb_critAttack = attack;
				var rcb_kbsMaxInWindow = 0;		//Maximum knockback scaling within the window currently being checked. Needs to be initialized outside of the loop to prevent unwanted resets.
				var rcb_window = 0;				//Window currently being checked. Needs to be initialized outside of the loop to prevent unwanted resets.
				var rcb_isProj = 0;				//Checks if the attack has a projectile.

				//Loop through every hitbox and make the proper adjustments to make it a critbox.
				for(var rcb_i = 1; rcb_i <= get_num_hitboxes(rcb_critAttack); rcb_i++)
				{
					//Temp variables to hold various hitbox stats.
					var rcb_kbs = get_hitbox_value(rcb_critAttack, rcb_i, HG_KNOCKBACK_SCALING);
					var rcb_bkb = get_hitbox_value(rcb_critAttack, rcb_i, HG_BASE_KNOCKBACK);
					var rcb_dmg = get_hitbox_value(rcb_critAttack, rcb_i, HG_DAMAGE);
					var rcb_hps = get_hitbox_value(rcb_critAttack, rcb_i, HG_HITPAUSE_SCALING);
					var rcb_bhp = get_hitbox_value(rcb_critAttack, rcb_i, HG_BASE_HITPAUSE);

					//Check if the loop has moved on to a new window. If so, update rcb_kbsMaxInWindow and rcb_window.
					if(rcb_window != get_hitbox_value(rcb_critAttack, rcb_i, HG_WINDOW))
					{
						rcb_kbsMaxInWindow = rcb_kbs;
						rcb_window = get_hitbox_value(rcb_critAttack, rcb_i, HG_WINDOW);
					}

					//Update rcb_kbsMaxInWindow
					if(rcb_kbs > rcb_kbsMaxInWindow)
						rcb_kbsMaxInWindow = rcb_kbs;

					//If the current hitbox meets or surpasses the threshold, apply the knockback multiplier
					if(rcb_kbs >= other.kbg_threshold)
					{
						set_hitbox_value(rcb_critAttack, rcb_i, HG_BASE_KNOCKBACK, rcb_bkb * other.crit_kb_multiplier);
						set_hitbox_value(rcb_critAttack, rcb_i, HG_KNOCKBACK_SCALING, rcb_kbs * other.crit_kb_multiplier);
						set_hitbox_value(rcb_critAttack, rcb_i, HG_BASE_HITPAUSE, rcb_bhp * other.crit_hp_multiplier);
						set_hitbox_value(rcb_critAttack, rcb_i, HG_HITPAUSE_SCALING, rcb_hps * other.crit_hp_multiplier);
					}

					//Apply the damage multiplier and change the hit sound regardless of whether the hitbox me the threshold or not.
					set_hitbox_value(rcb_critAttack, rcb_i, HG_DAMAGE, rcb_dmg * other.crit_damage_multiplier);

					set_hitbox_value(rcb_critAttack, rcb_i, HG_HIT_SFX, other.crit_hit);
					set_hitbox_value(rcb_critAttack, rcb_i, HG_VISUAL_EFFECT, 197);

					if(get_hitbox_value(rcb_critAttack, rcb_i, HG_HITBOX_TYPE) == 2)
						rcb_isProj = true;
				}
			}
		}

		if(has_hit || rcb_isProj)
			rcb_critHit = true;
	}
}

//Draw "Critical Hit!!!" message.
with(asset_get("pHitBox"))
{
	if(player_id == other.owner)
	{
		if(sound_effect == other.crit_hit)
		{
			if("rcb_hit" not in self)
				rcb_hit = false;
			for(var rcb_i = 1; rcb_i <= 4; rcb_i++)
			{
				if(player != rcb_i && !can_hit[rcb_i] && !rcb_hit)
				{
					var vfx_offset_x = 0;//(floor(hit_effect_x * 0.75) + random_func(0, floor(hit_effect_x * 0.5), true)) * spr_dir;
					var vfx_offset_y = 0;//floor(hit_effect_y * 0.75) + random_func(1, floor(hit_effect_y * 0.25), true); 
					var vfx = spawn_hit_fx(x + vfx_offset_x, y - vfx_offset_y, other.crit_vfx);
					if(type != 2)
					{
						if(vfx.spr_dir == -1)
							vfx.x -= image_xscale*200;
						vfx.y -= image_yscale*200;
					}
					vfx.spr_dir = 1;
					rcb_hit = true;
				}
			}
		}
		with(other){print_debug(string(other.can_hit[4]));}
	}
}

with(asset_get("oPlayer"))
{
	if(self != other.owner)
	{
 		//Initialize variables in other player
		if("rcb_lastDamage" not in self)
			rcb_lastDamage = get_player_damage(player);
		//Detect opponent taking damage. Done from opponent's perspective for maximum accuracy.
		if(state == PS_RESPAWN)
			rcb_lastDamage = get_player_damage(player);
		else
		{
			//If an enemy takes damage from the owner, put the damage dealt into the damage ledger for calculating crit chance.
			if(get_player_damage(player) > rcb_lastDamage)
			{
				with(other) {print_debug(string(other.last_player) + " " + string(owner.player));}
				if(last_player == other.owner.player)
				{
					other.ledger[array_length(other.ledger), 1] = get_player_damage(player) - rcb_lastDamage;	//Put the damage recieved in the right column of the damage ledger.
					other.ledger[array_length(other.ledger) - 1, 0] = get_gameplay_time();	//Put the current gameplay time in the left column of the damage ledger.
				}
				rcb_lastDamage = get_player_damage(player);	//Update last damage value.
			}
		}
	}
}

#define calc_crit_chance
{
	///calc_crit_chance(base, max_chance, damage_goal, ledger)
	//
	//Returns the current crit chance.
	//
	//Arguments:
	//	base		Base crit chance (between 0 and 100), real.
	//	max_chance	Max crit chance (between 0 and 100), real.
	//	damage_goal	Amount of damage it takes to max out the damage chance, real.
	//	ledger		An array detailing the damage done in the last read_time frames.
	//				Rows formatted chronologically, columns formatted [time, damage], array.
	//
	var _base = argument0;
	var _max = argument1;
	var _dmg_goal = argument2;
	var _ledger = array_clone(argument3);

	//Sum the damages in the ledger.
	var d_sum = 0;
	for(var i = 0; i < array_length(_ledger); i++)
	{
		d_sum += _ledger[i,1];
		// print_debug("ledger sum: " + string(d_sum));
	}

	return clamp(ease_linear(_base, _max, d_sum, _dmg_goal), _base, _max);
}