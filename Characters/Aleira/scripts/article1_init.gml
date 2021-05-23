//Article 1 Init

//Sprite Traits
sprite_index = sprite_get("berimbau");
image_index = 0;
idle_anim_frame_start = 0;
idle_anim_length = 10;
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
leniancy = 15;

//  Air Traits
gravity_reduction = 0.9;

//  Water Traits
slow_factor = 0.8;
hitstun_decay_factor = 0.99108;
hitstun_decay_max = 1.776;


//  Earth Traits