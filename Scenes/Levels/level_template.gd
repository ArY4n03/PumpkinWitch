extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if self.name == "Level1":
		Autoload.start_timer()
		TimerScene.get_node("Label").visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("BackToTitleScreen"):
		get_tree().change_scene_to_file("res://Scenes/UI/TitleScreen.tscn")
	elif Input.is_action_just_released("Restart"):
		get_tree().reload_current_scene()


func _on_level_restart_area_body_entered(body: Node2D) -> void:
	get_tree().call_deferred('reload_current_scene')
	Autoload.fails += 1
