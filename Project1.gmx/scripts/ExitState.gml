///exit_State


if (image_alpha > 0)
{
    image_alpha -= .25;
}
else 
{
    if (room != room_last)
    {
        room_goto_next();
        state = MoveState;
    }
    else
    {
        
        game_restart();
    }
}
