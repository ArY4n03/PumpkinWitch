extends Node2D
var sprite_rotation = 0
@onready var player = get_node("Player")


func _process(delta: float) -> void:
	sprite_rotation = abs((get_global_mouse_position() - player.global_position))
	$Sprite2D.global_position = get_global_mouse_position()
	$Sprite2D.rotation = sprite_rotation.angle()

func _get_angle():
	var mouse_pos = get_global_mouse_position()
	var player_pos = player.global_position
