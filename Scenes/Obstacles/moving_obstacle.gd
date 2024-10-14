extends"res://Scenes/Obstacles/obstacle_template.gd"

enum movement{horizontal,vertical}

@export var move_dir: movement

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if move_dir == movement.horizontal:
		self.rotation_degrees = 90 
	
	$AnimationPlayer.play("Vertical")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
