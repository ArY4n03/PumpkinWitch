extends Node
var fails = 0
var just_started = true
func _ready() -> void:
	SilentWolf.configure({
		"api_key": "api key of game",
		"game_id": "game id",
		"log_level": 1
		})
	SilentWolf.configure_scores({
		"open_scene_on_close": "res://Scenes/UI/TitleScreen.tscn"
		 })

func start_timer():
	TimerScene.stop_timer = false
func reload():
	get_tree().reload_current_scene()
