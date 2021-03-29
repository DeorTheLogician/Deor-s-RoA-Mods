//Spawn Chance Variables
donation_chance = 20;
follower_chance = 80;
subscriber_chance = 50;

//Spawn Chances for Donation Plat Sizes (target numbers for a "d100" roll)
donation_chance_sm = 33;
donation_chance_md = 66;

//Timing Variables
spawn_interval = 60 * 5;   //Number of frames between the global platform spawn check.

//Platform Variables;
donation_plat = noone;
follower_plat = noone;
subscriber_plat = noone;

//Other Variables
seed = 0;

//Initialize FX
break_fx = hit_fx_create(sprite_get("break_fx"), 12);

//Initialize Sound Variables
donation_sound_sm = sound_get("donation1");
donation_sound_sm_length = 195;

donation_sound_md = sound_get("donation2");
donation_sound_md_length = 240;

donation_sound_lg = sound_get("donation3");
donation_sound_lg_length = 390

follower_sound = sound_get("follower");
follower_sound_length = 160;

subscriber_sound = sound_get("subscriber");
subscriber_sound_length = 78;

sound_play_time = 0;
sound_ticket = [0, 0, 0, 0, 0]; //A ledger of sounds that need to be played. It's formated as:
                                //[large donation, medium donatin, small donation, follower, subscriber]
                                //Where the number is the number of times a sound needs to be played.

//Initialize Sprites
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

//          Follower Platform Sprites
follower_plat = sprite_get("follower_plat");                //Follower Platform
follower_plat_mask = sprite_get("follower_plat_mask");      //Follower Platform Mask
follower_plat_trans = sprite_get("follower_plat_trans");    //Follower Platform Transparent Form
follower_plat_spawn = sprite_get("follower_plat_start");    //Follower Platform Spawn Animation
follower_plat_despawn = sprite_get("follower_plat_stop");   //Follower Platform Depawn Animation

//          Subscriber Platform Sprites
subscriber_plat = sprite_get("subscriber_plat");                //Subscriber Platform
subscriber_plat_mask = sprite_get("subscriber_plat_mask");      //Subscriber Platform Mask
subscriber_plat_trans = sprite_get("subscriber_plat_trans");    //Subscriber Platform Transparent Form
subscriber_plat_spawn = sprite_get("subscriber_plat_start");    //Subscriber Platform Spawn Animation
subscriber_plat_despawn = sprite_get("subscriber_plat_stop");   //Subscriber Platform Despawn Animation

//Make transparent plat object.
trans_plat_obj = instance_create(0, 0, "obj_stage_article", 4);