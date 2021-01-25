pet_w = 0;			// Default: 36 (The buddy's width)
run_speed = 0;		// Default: 3
max_run_dist = 90000000000000000000000;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)

reverse_window_percent = 0.75;
reverse_window_max = 8;

with(asset_get("oPlayer"))
{
    brb_attack_start = 0;
    brb_reverse_window = 0;
    brb_reverse_flag = false;
}