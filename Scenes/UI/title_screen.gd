extends Control

func _ready() -> void:
	TimerScene.timer = 0.0
	TimerScene.stop_timer = true
	TimerScene.get_node("Label").visible = false

func _on_leaderboard_button_up() -> void:
	get_tree().change_scene_to_file("res://addons/silent_wolf/Scores/Leaderboard.tscn")

func _on_play_button_up() -> void:
	get_tree().change_scene_to_file("res://Scenes/Levels/level_1.tscn")

func _on_credits_button_up() -> void:
	$Popup.show()

func _process(delta: float) -> void:
	$TextureRect.visible = $Popup.visible
