///hurtState()

sprite_index = sprPlayerDamage;
darkenBehind();

if (hSpd != 0)
{
    image_xscale = sign(hSpd);
}

//apply gravity
if (!place_meeting(x, y + 1, objSolid))
{
    vSpd += grav;
}
else
{
    vSpd = 0;
    applyFriction(acc);
}
directionMoveBounce(objSolid);

//change back to the move state
if (hSpd == 0 && vSpd == 0)
{
    if(objPlayerStats.hp <= 0)
    {
        if(objPlayerStats.sapphire >= 1)
        {
            objPlayerStats.sapphire -= 2;
        }
        
        objPlayerStats.hp = objPlayerStats.maxHp - 2;
        
        room_restart();
    }
    state = MoveState;
}
