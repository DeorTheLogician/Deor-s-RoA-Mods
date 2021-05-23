///Animation

switch(state) {
    case PS_IDLE:
        if(instance_exists(boom_box_id)) {
            image_index = (boom_box_id.image_index + 2) % 5;
        }
        break;
}