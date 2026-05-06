if  (vez = 0)
{
	if (obj_player.image_alpha <= 0.35)
	{
		image_speed = 4.0;
		vez ++;
		
		if (!audio_is_playing(snd_passar_fase))
		{
			audio_play_sound(snd_passar_fase, 10, 0, 2.5)
		}
		
		
		
	}
}