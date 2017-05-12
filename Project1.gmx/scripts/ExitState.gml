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
        //calc score
        score = objPlayerStats.sapphire;
        
        // Open the highscores
        ini_open("Settings.ini");
        objPlayerStats.highScore = ini_read_real("Score", "High Score", 0);
        
        if(score > objPlayerStats.highScore)
        {
            objPlayerStats.highScore = score;
            ini_write_real("Score", "High Score", objPlayerStats.highScore);
            ini_close();
        }
        
        room_goto(rmHighScore);
    }
}
