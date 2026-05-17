global.ficar_invisivel = false
global.player_liberado = true
global.room_primeira_vez_iniciada = true



function inicio_transicao_cena ()
{
	global.ficar_invisivel = false
	room_goto_next()
}
function fim_transicao_cena_fim ()
{
	global.player_liberado = true
}
function fim_transicao_cena_inicio ()
{
	global.player_liberado = false
}