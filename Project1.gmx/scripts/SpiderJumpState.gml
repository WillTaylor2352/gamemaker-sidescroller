///spiderJumpState
image_index = image_number - 1; 

//apply gravity

if (!place_meeting(x, y+1, objDirt))
{
vSpd+= grav; 
}
else
{
    vSpd = 0; 
    
    //use friction
    applyFriction(acc);
    
    //check for idle state
    if(hSpd == 0 && vSpd == 0)
    {
        state = SpiderIdleState;
        alarm[0] = 15;
        image_speed = 0; 
        image_index = 0; 
    }
}

if (hSpd != 0) 
{
    image_xscale = sign(hSpd);
}

//move
horizontalMoveBounce(objDirt);
