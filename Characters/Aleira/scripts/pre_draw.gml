// pre_draw

var time_since_stance_change = get_gameplay_time() - stance_change_time;

var current_r = color_get_red(stance_color_current);
var current_g = color_get_green(stance_color_current);
var current_b = color_get_blue(stance_color_current);

if(time_since_stance_change < color_change_time) {
    var stance_color_target = stance_colors[stance];

    var current_r = color_get_red(flash_color);
    var current_g = color_get_green(flash_color);
    var curreng_b = color_get_blue(flash_color);

    var target_r = color_get_red(stance_color_target);
    var target_g = color_get_green(stance_color_target);
    var target_b = color_get_blue(stance_color_target);

    var trans_r = clamp(ease_linear(current_r, target_r, time_since_stance_change, color_change_time - 1), 0, 255);
    var trans_g = clamp(ease_linear(current_g, target_g, time_since_stance_change, color_change_time - 1), 0, 255);
    var trans_b = clamp(ease_linear(current_b, target_b, time_since_stance_change, color_change_time - 1), 0, 255);

    var trans_color = make_color_rgb(trans_r, trans_g, trans_b);

    var trans_s = clamp(ease_cubeIn(color_get_saturation(flash_color), color_get_saturation(stance_color_target), time_since_stance_change, color_change_time - 1), 0, 255);
    var trans_v = clamp(ease_cubeIn(color_get_value(flash_color), color_get_value(stance_color_target), time_since_stance_change, color_change_time - 1), 0, 255);

    trans_color = make_color_hsv(color_get_hue(trans_color), trans_s, trans_v);

    set_character_color_slot(stance_color_region, color_get_red(trans_color), color_get_green(trans_color), color_get_blue(trans_color));

    draw_circle_color(x - 20, y + 20, 8, stance_color_current, stance_color_current, false);
    draw_circle_color(x + 00, y + 20, 8, trans_color, trans_color, false);
    draw_circle_color(x + 20, y + 20, 8, stance_color_target, stance_color_target, false);
} else if(time_since_stance_change == color_change_time) {
    stance_color_current = stance_colors[stance];
} else {
    set_character_color_slot(stance_color_region, current_r, current_g, current_b);
}