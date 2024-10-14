extends CanvasLayer

var stop_timer = true
var timer = 0.0
var seconds = 0
var minutes = 0
func _process(delta: float) -> void:
	if not stop_timer:
		timer += delta
	
	time_to_string()

func time_to_string():
	seconds = fmod(timer,60)
	minutes = timer/60
	var time_string = str(int(minutes)) + ":" + str(int(seconds))
	$Label.text = time_string
