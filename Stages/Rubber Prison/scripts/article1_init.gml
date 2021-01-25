///Shocking Platforms Initialize

sprite_index = sprite_get("cageMask");

bottom_plat = instance_create(x, y + 96, "obj_stage_article_platform", 2);
bottom_plat.parent = id;

cage_height = 106;
cage_width = 96;
cage_player_offset_y = floor(cage_height / 2);

life_timer = 0;

state = 0;
state_timer = 0;

drop_speed_max = 9;
reel_speed = -1;

grav_sub = 0.625;
vsp_sub = 0;

captured_player = noone;

grab_box_width = 96;
grab_box_height = 96;
grab_armor = 8;
grab_time_max = 60 * 2.5;
grab_timer = 0;

bounce_decay = 0.5;
bounce_wait = 60 * 3;
bounce_wait_timer = 0;

number = 0;
activated = false;