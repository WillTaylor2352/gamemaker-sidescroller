///exit_State

if (image_alpha > 0)
{
    image_alpha -= .25;
}
else 
{
    if (room != room_last)
    {
        show_message("going to next room");
        room_goto_next();
        state = MoveState;
    }
    else
    {
        show_message("restarting");
        game_restart();
    }
}
