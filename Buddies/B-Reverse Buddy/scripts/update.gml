with(asset_get("oPlayer"))
{
	if( attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL || attack == AT_USPECIAL_2 || attack == AT_USPECIAL_GROUND)
	{
		if(window == 1 && window_timer == 1)
		{
			brb_attack_start = get_gameplay_time();
			brb_reverse_window = min(max(ceil(get_window_value(attack, window, AG_WINDOW_LENGTH) * other.reverse_window_percent), 5), other.reverse_window_max);
			brb_reverse_flag = false;

			// if(get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) == 0 && get_window_value(attack, window, AG_WINDOW_LENGTH) > 5)
			// 	print_debug(string(min(max(ceil(get_window_value(attack, window, AG_WINDOW_LENGTH) * other.reverse_window_percent), 5), other.reverse_window_max) - 4));
			// else
			// 	print_debug("not reversable");
		}

		if(get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) == 0 && !brb_reverse_flag && get_gameplay_time() <= brb_attack_start + brb_reverse_window && get_gameplay_time() >= brb_attack_start + 4 && window == 1)
		{
			if(spr_dir == 1)
			{
				if(left_pressed)
				{
					spr_dir = -1;
					hsp *= -1;
					brb_reverse_flag = true;

					// print_debug("b-reverse");
				}
			}
			else if(spr_dir == -1)
			{
				if(right_pressed)
				{
					spr_dir = 1;
					hsp *= -1;
					brb_reverse_flag = true;

					// print_debug("b-reverse");
				}
			}
		}
	}
}