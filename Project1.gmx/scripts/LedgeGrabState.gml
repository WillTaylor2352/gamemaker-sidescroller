///LedgeGrabState()
var up = keyboard_check(ord('W')) || keyboard_check(vk_up);
var upSpace = keyboard_check(vk_space);
var down = keyboard_check(ord('S')) || keyboard_check(vk_down);
var shift = keyboard_check(vk_shift);

//vSpd = 0;
sprite_index = sprPlayerLedgeGrab;


if (down)
{
    if (shift)
    {
        state = RunState;
    }
    else 
    {
        state = MoveState;
    }
    
}

if (up || upSpace)
{
    if (shift)
    {
        state = RunState;
        vSpd = -16;
    }
    else 
    {
        state = MoveState;
        vSpd = -16;
    }
}

