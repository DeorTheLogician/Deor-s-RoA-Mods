//          Subscriber Platform Sprites
subscriber_plat = sprite_get("subscriber_plat");                //Subscriber Platform
subscriber_plat_mask = sprite_get("subscriber_plat_mask");      //Subscriber Platform Mask
subscriber_plat_trans = sprite_get("subscriber_plat_trans");    //Subscriber Platform Transparent Form
subscriber_plat_spawn = sprite_get("subscriber_plat_start");    //Subscriber Platform Spawn Animation
subscriber_plat_despawn = sprite_get("subscriber_plat_stop");   //Subscriber Platform Despawn Animation

//Timing Variables
anim_speed = 1/2;   //Rate of animation in animation frames per game frame.
spawn_time = 36 / anim_speed;   //Number of game frames the spawn state lasts.
despawn_time = 20 / anim_speed; //Number of game frames the despawn state lasts.

spawn_clip_time = 27 / anim_speed;  //Number of frames after entering spawn state that collision is enabled.
despawn_noclip_time = 16 / anim_speed;  //Number of frames after entering despawn state that collision is disabled.

state_timer = 0;    //The number of frames into the current state.

//Other Variables
init = true;
state = 0;
size = 0;

sprite_index = subscriber_plat_spawn;
mask_index = asset_get("empty_sprite");