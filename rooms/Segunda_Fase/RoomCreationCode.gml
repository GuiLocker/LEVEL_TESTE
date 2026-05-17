

if (global.room_primeira_vez_iniciada = true)
{
	layer_sequence_create("Transicao_cena", obj_player.x, obj_player.y -50, sqc_transicao_fim_cena)
}