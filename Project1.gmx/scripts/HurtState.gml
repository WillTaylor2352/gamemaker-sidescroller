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
    state = MoveState;
}
