with(asset_get("oPlayer"))
{
	if(attack == AT_DATTACK && window == 1 && state == PS_ATTACK_GROUND)
	{
		if(window_timer >= other.dacp_window_start || window_timer <= other.dacp_window_end_max)
		{
			if(shield_pressed)
			{
				set_state(PS_PARRY_START);
				window = 0;
				window_timer = 0;

				var da_speed = get_window_value(attack, 1, AG_WINDOW_HSPEED);
				hsp = clamp(max(dash_speed, da_speed) * 1.5 , 0, -6 * ground_friction * ground_friction + 13 * ground_friction + 3) * spr_dir;	//Speed boost with a limit based on friction to keep characters from getting too ridiculous.
				// print_debug(string(hsp));
				// print_debug(string(ground_friction));
			}
		}
	}
}