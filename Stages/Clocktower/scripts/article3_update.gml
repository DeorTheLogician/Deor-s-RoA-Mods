//Parrot controller

//Actions to perform if not being destroyed.
if(!destroyed)
{
	//Move run_speed in move_direction.
	hsp = run_speed * move_direction;

	//Swooping motion
	vsp += 0.25 * sin(lifetime * lifetime);

	// Hitbox generation
	if (lifetime % damage_rate == 0)
		parrot_hitbox = create_hitbox(AT_USPECIAL, 2, x, y);
		
	if (instance_exists(parrot_hitbox))
	{
		if (spr_dir == 1)
		{
			parrot_hitbox.x = x;
			parrot_hitbox.y = y;
		}
		else if (spr_dir == -1)
		{
			parrot_hitbox.x = x;
			parrot_hitbox.y = y;
		}
	}

	//Set destroyed flag if about to leave the room bounds.
	var x_next = x + hsp;
	if(x_next <= 0 || x_next >= room_width)
		destroyed = true;

	//Animation update.
	spr_dir = -move_direction;
	var anim_speed = 0.08;
	image_index += anim_speed;

	//Increment lifetime.
	lifetime++;
}
//Actions to perform if being destroyed.
else
{
	//Update the owner's "time_last_destroyed" before being destroyed to begin the wait for the next spawn. 
	owner_id.time_last_destroyed = get_gameplay_time();
	owner_id.sound_fadeout_begin = get_gameplay_time();
	instance_destroy();
}