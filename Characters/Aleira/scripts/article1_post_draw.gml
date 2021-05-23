shader_end();

var element_color = player_id.stance_colors[element];

draw_circle_color(x, y - (bbox_bottom - bbox_top)/2, radius, element_color, element_color, true);

// with(player_id) {
//     if(y - (bbox_bottom - bbox_top) / 2  <= other.y - (other.bbox_bottom - other.bbox_top) / 2) {
//         draw_line_color(x, y, other.x, other.y - (other.bbox_bottom - other.bbox_top) / 2, c_yellow, c_yellow);
//     } else {
//         draw_line_color(x, y - (bbox_bottom - bbox_top), other.x, other.y - (other.bbox_bottom - other.bbox_top) / 2, c_yellow, c_yellow);
//     }
// }

// switch(element) {
//     case 0:
//         draw_debug_text(x, y, string(measure_progress div frames_per_beat));
//     break;
// }