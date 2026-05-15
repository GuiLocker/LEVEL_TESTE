global.ficar_invisivel = false

function inicio_transicao_cena ()
{
	room_goto_next()
}
function fim_transicao_cena ()
{
	global.ficar_invisivel = false
}