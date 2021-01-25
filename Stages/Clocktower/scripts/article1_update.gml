// Jennifer controller

//Actions to perform if not being destroyed.
if(!destroyed)
{
	//Move run_speed in move_direction.
	hsp = run_speed * move_direction;

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
	instance_destroy();
}