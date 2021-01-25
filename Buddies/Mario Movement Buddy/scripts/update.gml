with(asset_get("oPlayer"))
{
	//Perform side hop
	if("mmb_side_hop" not in self)	//Create side hop flag.
		mmb_side_hop = false;

	if(state == PS_JUMPSQUAT && mmb_last_state == PS_DASH_TURN)	//Set side hop flag if jumping out of a dash turn.
		mmb_side_hop = true;
	
	if(mmb_side_hop == true && state == PS_JUMPSQUAT && !jump_down)	//Clear side hop flag if short hopping.
		mmb_side_hop = false;

	if(mmb_side_hop && free && state_timer == 1)	//Add side hop speed to full hop speed if side hopping
	{
		vsp = mmb_side_hop_speed;
		sound_play(other.sh_sound);
		mmb_side_hop = false;
	}


	//Perform long jump
	if("mmb_long_jump" not in self)	//Create long jump flag.
		mmb_long_jump = false;

	//Set long jump flag if the player jumps after pressing downwards (within a certain tolerance).
	if(!free && state == PS_JUMPSQUAT && (mmb_last_input_direction >= 270 - other.lj_tolerance &&  mmb_last_input_direction <= 270 + other.lj_tolerance) && abs(hsp) >= mmb_lj_trigger_speed && state_timer == 0)
		mmb_long_jump = true;

	//If the player short hopped, add long jump speed to their horizontal velocity.
	if(mmb_long_jump && free && state_timer == 1 && abs(vsp) <= short_hop_speed)
	{
		hsp += spr_dir * mmb_long_jump_speed;
		sound_play(other.lj_sound);
		mmb_long_jump = false;
	}

	//Otherwise, clear long jump flag just in case.
	if(mmb_long_jump && state != PS_JUMPSQUAT && state_timer > 1)
		mmb_long_jump = false;


	//Update last_state and last_input_direction
	mmb_last_state = state;

	if(!joy_pad_idle)
		mmb_last_input_direction = joy_dir;
	else
		mmb_last_input_direction = 0;
}