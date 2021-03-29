//          Dontation Platform Sprites
donation_plat_sm = sprite_get("donation1_plat");                //Donation Platforms
donation_plat_md = sprite_get("donation2_plat");
donation_plat_lg = sprite_get("donation_plat");

donation_plat_sm_mask = sprite_get("donation1_plat_mask");      //Donation Platofrm Masks
donation_plat_md_mask = sprite_get("donation2_plat_mask");
donation_plat_lg_mask = sprite_get("donation_plat_mask");

donation_plat_sm_trans = sprite_get("donation1_plat_trans");    //Donation Platform Transparent Forms
donation_plat_md_trans = sprite_get("donation2_plat_trans");
donation_plat_lg_trans = sprite_get("donation_plat_trans");

donation_plat_sm_spawn = sprite_get("donation1_plat_start");    //Donation Platform Spawn Animations
donation_plat_md_spawn = sprite_get("donation2_plat_start");
donation_plat_lg_spawn = sprite_get("donation_plat_start");

donation_plat_sm_despawn = sprite_get("donation1_plat_stop");   //Donation Platform Depawn Animations
donation_plat_md_despawn = sprite_get("donation2_plat_stop");
donation_plat_lg_despawn = sprite_get("donation_plat_stop");

//Timing Variables
// spawn_interval = 60 * 15;
anim_speed = 1/2;   //Rate of animation in animation frames per game frame.
spawn_time = 36 / anim_speed;   //Number of game frames the spawn state lasts.
despawn_time = 34 / anim_speed; //Number of game frames the despawn state lasts.

spawn_clip_time = 27 / anim_speed;  //Number of frames after entering spawn state that collision is enabled.
despawn_noclip_time = 16 / anim_speed;  //Number of frames after entering despawn state that collision is disabled.

state_timer = 0;    //The number of frames into the current state.

//Other Variables
init = true;
state = 0;
size = 0;

mask_index = asset_get("empty_sprite");
sprite_index = donation_plat_sm_spawn;