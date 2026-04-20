if reload_tr > 0{
	reload_tr--
	if reload_tr <= 0{
		ammo = max_ammo
		is_reloading = false
		audio_play_sound(snd_reload, 0, false)
		show_debug_message("Recharge !")
	}
}

if keyboard_check_pressed(ord("R")) && is_reloading && ammo < max_ammo{
	reload_tr = 60
	is_reloading = true
	show_debug_message("Rechargement")
}

image_angle = point_direction(x, y, mouse_x, mouse_y)

