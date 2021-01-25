if(is_aether_stage())
{
    cage_drop_timer = (cage_drop_timer + 1) % cage_drop_wait_time;

    if(cage_drop_timer == cage_drop_wait_time - 1)
    {
        switch(cage_drop_mode)
        {
            case 0:
                if(cage_1.state == 0 && cage_1.captured_player == noone)
                {
                    cage_1.activated = true;
                    cage_drop_mode++;
                }
                break;
            case 1:
                if(cage_2.state == 0 && cage_2.captured_player == noone)
                {
                    cage_2.activated = true;
                    cage_drop_mode++;
                }
                break;
            case 2:
                if(cage_1.state == 0 && cage_1.captured_player == noone)
                    cage_1.activated = true;
                if(cage_2.state == 0 && cage_2.captured_player == noone)
                    cage_2.activated = true;

                cage_drop_mode = 0;
                break;
        }
    }
}