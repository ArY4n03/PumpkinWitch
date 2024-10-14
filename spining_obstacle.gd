extends "res://Scenes/Obstacles/obstacle_template.gd"

var spinning_speed = 500

func _process(delta: float) -> void:
	rotation_degrees += spinning_speed * delta

	
