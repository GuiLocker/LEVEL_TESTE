global.ficar_invisivel = false
global.player_liberado = true
global.room_primeira_vez_iniciada = true



function inicio_transicao_cena ()
{
	room_goto_next()
	global.ficar_invisivel = false
}
function fim_transicao_cena_fim ()
{
	global.player_liberado = true
}
function fim_transicao_cena_inicio ()
{
	global.player_liberado = false
}