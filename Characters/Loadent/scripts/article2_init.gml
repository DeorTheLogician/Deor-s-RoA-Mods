//article2_init
//From Hime
init = 0;

sprite_index = sprite_get("ropeArrow");
mask_index = asset_get("empty_sprite");

state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
anim_time = .2;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
//free = true;


//Custom Vars
throw_speed = 20;
stay_time = 80;
dist = 64;
hook_time = 5;
stuck_in_player = false;
direc = 0;
//Proj Vars
hbox = noone;
