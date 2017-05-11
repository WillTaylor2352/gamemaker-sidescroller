///snakeMoveRightState()
darkenBehind();

var wallAtLeft = place_meeting(x-1, y, objDirt);
var ledgeAtLeft = !position_meeting(bbox_left-1, bbox_bottom+1, objDirt);

if (wallAtLeft || ledgeAtLeft)
{
    state = SnakeMoveRightState;
}

// control the snake sprite
image_xscale = -1;

// move the snake
x -= 1;


