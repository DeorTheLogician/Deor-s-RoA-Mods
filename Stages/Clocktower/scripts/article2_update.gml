//Scissorman controller

//Actions to perform if not being destroyed.
if(!destroyed)
{
	//Move run_speed in move_direction.
	hsp = run_speed * move_direction;

	// Hitbox generation
	if (lifetime % damage_rate == 0)
		scissors_hitbox = create_hitbox(AT_USPECIAL, 1, x, y);
		
	if (instance_exists(scissors_hitbox))
	{
		if (spr_dir == 1)
		{
			scissors_hitbox.x = x;
			scissors_hitbox.y = y;
		}
		else if (spr_dir == -1)
		{
			scissors_hitbox.x = x;// - 90;
			scissors_hitbox.y = y;
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
	owner_id.sound_fadeout_begin = get_gameplay_time();
	instance_destroy();
}