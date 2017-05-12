///bossLiftState()

image_index = 1; 

if(vSpd >= -16)
{
    vSpd -= .5;
}
move(objSolid);
if(place_meeting(x, y-16, objSolid))
{
    vSpd = 0; 
    state = BossChaseState;
}
