//Article 1 Init

//Sprite Traits
sprite_index = sprite_get("bamboo_stalk");
image_index = 0;
idle_anim_frame_start = 2;
idle_anim_length = 5;
anim_speed = 1/6;

//General Traits
creation_time = get_gameplay_time();
uses_shader = true;
init = true;
element = 0;
radius = 120;

//Additional Traits
//  Fire Triats
tempo = 120;    //Tempo of fire song in beats per minute.
frames_per_beat = (60 * 60) / 120;    //Number of frames for one beat.
beats_per_bar = 2;
bar_length = frames_per_beat * beats_per_bar;
can_burst = false;
bad_timing_lockout = 0;

//  Air Traits


//  Water Traits


//  Earth Traits