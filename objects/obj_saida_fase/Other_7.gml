image_speed = 0
global.player_liberado = false

var _cam = view_get_camera(0)

var _cam_x = camera_get_view_x(_cam)
var _cam_y = camera_get_view_y(_cam)



layer_sequence_create("Transicao_cena", _cam_x + 320, _cam_y + 180, sqc_transicao_inicio_cena)

global.room_primeira_vez_iniciada = true




