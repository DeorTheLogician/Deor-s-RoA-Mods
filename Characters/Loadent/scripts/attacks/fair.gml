set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -.5);
set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 15);

set_num_hitboxes(AT_FAIR,2);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 144);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_swipe_medium1"));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 138);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_swipe_heavy1"));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);

