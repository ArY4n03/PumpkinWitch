extends Node
var fails = 0
var just_started = true
func _ready() -> void:
	SilentWolf.configure({
		"api_key": "gsC2ho3TcO2L5SDSwrw1T8y0XDySoTVU5xUP9bPd",
		"game_id": "PumpkinWitch",
		"log_level": 1
		})
	SilentWolf.configure_scores({
		"open_scene_on_close": "res://Scenes/UI/TitleScreen.tscn"
		 })

func start_timer():
	TimerScene.stop_timer = false
func reload():
	get_tree().reload_current_scene()
