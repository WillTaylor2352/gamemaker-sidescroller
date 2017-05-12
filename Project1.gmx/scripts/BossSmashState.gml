///bossSmashState
if(!place_meeting(x, y+1, objSolid))
{
    if(vSpd < 16) 
    {
        vSpd += 1.5;
    }
    move(objSolid);
}
else 
{
    state = BossStallState;
    alarm[0] = room_speed;
    audio_play_sound(sndStep, 8, false);
}
