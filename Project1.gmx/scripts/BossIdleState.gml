///bossIdleState()

var dis = point_distance(x, y, objPlayer.x, objPlayer.y);
if (dis <= 128) 
{
    state = BossLiftState;
    if(!audio_is_playing(sndMusic))
    {
        audio_emitter_gain(audio_em, .5);
        audio_play_sound_on(audio_em, sndBossMusic, true, 10);
    }
}

