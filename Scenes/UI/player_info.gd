extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	TimerScene.stop_timer = true
	TimerScene.get_node("Label").visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_submit_button_up() -> void:
	if $Name.text != "":
		var score = (TimerScene.minutes ) + (TimerScene.second/60)
		
		SilentWolf.Scores.save_score($Name.text, score)
		get_tree().change_scene_to_file("res://addons/silent_wolf/Scores/Leaderboard.tscn")
