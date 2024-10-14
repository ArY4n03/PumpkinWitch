extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var dir = 1 #1 =  right | -1 = left
enum states{idle,run,jump}

var player_state: states

func _physics_process(delta: float) -> void:
	dir = global_position.x - get_global_mouse_position().x
	if not abs(dir) < 10: #if difference in position is not less thane 10
		dir = -1 if dir > 1 else 1
	else:
		dir = 0
		
	$Sprite2D.flip_h = false if dir > 0 else true
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		player_state = states.jump
	
	if Input.is_action_pressed("move"):
		player_state  = states.run
	else:
		player_state = states.idle
		
	states_manager()

	move_and_slide()

func states_manager(): #manages different states of player
	match player_state:
		states.idle:
			velocity.x = lerp(velocity.x,0.0,0.3)
			$AnimationPlayer.play('idle')
		states.run:
			velocity.x = dir* SPEED	
			$AnimationPlayer.play("run")
		
