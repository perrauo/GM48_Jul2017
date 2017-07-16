/// @description init leaderboard UI
// You can write your code in this editor

//clear leaderboard

leaderboard_posx = x+ 20;
leaderboard_posy = y+ 20;

offset_y_size = 20;

////add score if it exists
//if variable_global_exists("money") && variable_global_exists("player_name") 
//{
//	highscore_add(global.player_name, global.money);
//}



var i;
i = 10;
repeat(10)
{
   scores[i] = highscore_value(i);
   players[i] = highscore_name(i);
         
   i -= 1;
}


