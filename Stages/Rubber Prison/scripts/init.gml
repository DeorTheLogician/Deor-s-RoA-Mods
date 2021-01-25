if(is_aether_stage())
{
    cage_1 = instance_create(get_marker_x(1), get_marker_y(1), "obj_stage_article_platform", 1);
    cage_1.number = 1;

    cage_2 = instance_create(get_marker_x(2), get_marker_y(2), "obj_stage_article_platform", 1);
    cage_2.number = 2;

    cage_drop_mode = 0; //0: left drops, 1: right drops, 2: both drop.
    cage_drop_wait_time = 7 * 60 + 1;
    cage_drop_timer = 0;
}