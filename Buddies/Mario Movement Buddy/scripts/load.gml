pet_w = 0;			// Default: 36 (The buddy's width)
run_speed = 0;		// Default: 3
max_run_dist = 90000000000000000000000;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)

lj_scale = 1.25;
shp_scale = 1.4;

lj_frame_window = 5;
lj_tolerance = 55;
lj_sound = sound_get("sfx_yahoo");
sh_sound = sound_get("sfx_waha");

with(asset_get("oPlayer"))
{
    mmb_last_state = 0;
    mmb_last_input_direction = 0;
    mmb_lj_trigger_speed = max(dash_speed - (ground_friction) * other.lj_frame_window, 0.1);
    mmb_long_jump_speed = other.lj_scale * (jump_speed - short_hop_speed);
    mmb_side_hop_speed = -other.shp_scale * jump_speed;
}