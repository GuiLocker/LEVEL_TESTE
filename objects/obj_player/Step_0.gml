

var _direcao_horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"))

if (keyboard_check(vk_right))
{
	_direcao_horizontal = 1
}
if (keyboard_check(vk_left))
{
	_direcao_horizontal = -1
}


velocidade_horizontal = _direcao_horizontal * velocidade_horizontal_maxima

y += gravidade

if (!place_meeting(x, y + 1, obj_colisor_chao))
{
	gravidade += aceleracao_gravitacional
	if (velocidade_horizontal != 0)
	{
		velocidade_horizontal = _direcao_horizontal * 6.5
	}
}
else {gravidade = 0; gravidade += 0; }


move_and_collide(velocidade_horizontal, velocidade_vertical, obj_colisor_parede)


var _jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up)

if (_jump && place_meeting(x, y + 1, obj_colisor_chao))
{
	gravidade = -10
	audio_play_sound(snd_jump_player, 10, 0)
}



if (_direcao_horizontal = 1 && gravidade = 0)
{
	image_speed = 7
	sprite_index = spr_player_walk
	image_xscale = 1
}
if (_direcao_horizontal = -1 && gravidade = 0)
{
	image_speed = 7
	sprite_index = spr_player_walk
	image_xscale = -1
}
if (_direcao_horizontal = 0 && gravidade = 0)
{
	image_speed = 7
	sprite_index = spr_player
	image_xscale = 1
}
if (gravidade != 0 && _direcao_horizontal = 1)
{
	image_speed = 5
	sprite_index = spr_player_move_jump
	image_xscale = 1
}
if (gravidade != 0 && _direcao_horizontal = -1)
{
	image_speed = 5
	sprite_index = spr_player_move_jump
	image_xscale = -1
}
if (gravidade != 0 && _direcao_horizontal = 0)
{
	image_speed = 5
	sprite_index = spr_player_idle_jump
	image_xscale = 1
}



if (global.ficar_invisivel = true)
{
	image_alpha = lerp(image_alpha, 0, 0.12)
}
else{image_alpha = 1}

if (keyboard_check(ord("R")))
{
	room_restart()
}