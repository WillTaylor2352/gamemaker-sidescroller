///bossChaseState

var dis = point_distance(x, y, objPlayer.x, y)

if (dis < sprite_width/2-16 || place_meeting(x-1, y, objSolid) || place_meeting(x+1, y, objSolid))
{
    state = BossSmashState;
    audio_play_sound(sndJump, 6, false);
    hSpd = 0;
}
else 
{
    hSpd = (objPlayer.x - x) * .05;
}

move(objSolid);
