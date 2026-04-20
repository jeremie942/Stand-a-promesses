x += hspeed
if x <= min_x{
	x = min_x
	hspeed = move_speed
	audio_play_sound(snd_land, 0 , false)
}

if x >= max_x{
	x = max_x
	hspeed = -move_speed
	audio_play_sound(snd_land, 0, false)
	