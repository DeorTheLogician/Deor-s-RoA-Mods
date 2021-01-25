//Manage stage article spawning.
if(is_aether_stage())
{
	var jenny_spawn_time = time_last_destroyed + wait_time;
	//When the last cycle ends, check if new cycle will be a parrot cycle.
	if(get_gameplay_time() == jenny_spawn_time - sound_fade_time)
	{
		//Create a random seed based on the sum of the x and y coordinates of all the players.
		seed = 0;
		with (asset_get("oPlayer"))
			other.seed = (other.seed + x + y) mod 24;
		
		//Use this random seed to make a random percentile roll. If the roll is below the chance to spawn a parrot, the parrot is spawned instead of Jennifer and the Scissorman.
		if(random_func(seed, 100, true) <= parrot_chance && !parrot_lockout_current)
			parrot_cycle_flag = true;
	}

	//Wait wait_time frames after the last time Jennifer left the screen.
	
	if(get_gameplay_time() == jenny_spawn_time)
	{
		if(!parrot_cycle_flag)
		{
			//Check for the current spawn position.
			switch(spawn_position)
			{
				//Spawn Jennifer in a left-facing position.
				case 0:
				case 2:
					jennyArticle = instance_create(get_marker_x(spawn_position + 1), get_marker_y(spawn_position + 1), "obj_stage_article", 1);
					jennyArticle.owner_id = self;
					jennyArticle.move_direction = -1;
					break;
				//Spawn Jennifer in a right-facing position.
				case 1:
				case 3:
					jennyArticle = instance_create(get_marker_x(spawn_position + 1), get_marker_y(spawn_position + 1), "obj_stage_article", 1);
					jennyArticle.owner_id = self;
					jennyArticle.move_direction = 1;
					break;
			}

			//Decrement parrot lockout timer.
			if(parrot_lockout_current > 0)
				parrot_lockout_current--;
		}

		else
		{
			parrotArticle = instance_create(get_marker_x(spawn_position + 1), get_marker_y(spawn_position + 1) - parrot_height, "obj_stage_article", 3);
			parrotArticle.owner_id = self;

			//Face left for even spawn positions, right for odd.
			if(spawn_position % 2)
				parrotArticle.move_direction = 1;
			else
				parrotArticle.move_direction = -1;
			
			parrot_lockout_current = parrot_lockout_cycles;
		}
	}

	//Once Jennifer has moved sm_follow_distance pixels, spawn the Scissorman to follow her.
	if(instance_exists(jennyArticle))
	{
		if(jennyArticle.lifetime == sm_follow_distance)
		{
			scissorArticle = instance_create(get_marker_x(spawn_position + 1), get_marker_y(spawn_position + 1), "obj_stage_article", 2);
			scissorArticle.owner_id = self;
			scissorArticle.move_direction = jennyArticle.move_direction;

			//Once Scissorman is spawned, update spawn_position.
			spawn_position = (spawn_position + 1) % 4;
		}
	}

	//Audio Controller
	if(!parrot_cycle_flag)
	{
		//Check if gameplay time is sound_fade_time frames before scissorman spawns. 
		var fadein_sound = sound_get("scissorsFadeIn");

		if(get_gameplay_time() == jenny_spawn_time + sm_follow_distance - sound_fade_time)
			sound_play(fadein_sound);		//Play fadein_sound leading in to him spawning.
		
		//Once Scissorman spawns, swap out fadein sound for the scissors sound.
		if(instance_exists(scissorArticle) && get_gameplay_time() == jenny_spawn_time + sm_follow_distance)
		{
			sound_stop(fadein_sound);
			sound_play(sound_get("scissors"), true);
		}
		else
		{
			//When the Scissorman is destroyed, begin fading out the sound.
			var fadeout_sound = sound_get("scissorsFadeOut");
			
			if(get_gameplay_time() == sound_fadeout_begin)
			{
				sound_stop(sound_get("scissors"));
				sound_play(fadeout_sound);
			}
			//Stop playing the sound when the fadeout time is over.
			if(get_gameplay_time() == sound_fadeout_begin + sound_fade_time)
				sound_stop(fadeout_sound);
		}
	}
	//Do the same for the parrot.
	else
	{
		//Check if gameplay time is sound_fade_time frames before scissorman spawns. 
		var fadein_sound = sound_get("parrotKillYouFadeIn");

		if(get_gameplay_time() == jenny_spawn_time - sound_fade_time)
			sound_play(fadein_sound);		//Play fadein_sound leading in to him spawning.
		
		//Once Scissorman spawns, swap out fadein sound for the scissors sound.
		if(instance_exists(parrotArticle) && get_gameplay_time() == jenny_spawn_time)
		{
			sound_stop(fadein_sound);
			sound_play(sound_get("parrotKillYou"), true);
		}
		else
		{
			//When the Scissorman is destroyed, begin fading out the sound.
			var fadeout_sound = sound_get("parrotKillYouFadeOut");
			
			if(get_gameplay_time() == sound_fadeout_begin)
			{
				sound_stop(sound_get("parrotKillYou"));
				sound_play(fadeout_sound);
			}
			//Stop playing the sound when the fadeout time is over.
			if(get_gameplay_time() == sound_fadeout_begin + sound_fade_time)
			{
				sound_stop(fadeout_sound);
				parrot_cycle_flag = false;
			}
		}
	}
}