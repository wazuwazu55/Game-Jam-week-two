extends CharacterBody2D


var speed = 150.0
var sprint_speed = 300.0
var acceleration = 800.0
var deceleration = 600.0
var jump_velocity = -400.0

func _physics_process(delta: float) -> void:
	# Apply gravity
	if not is_on_floor():
		velocity.y += get_gravity().y * delta
	# Handle jump
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
	# Sprint toggle
	var current_max_speed :float = speed
	if Input.is_action_pressed("sprint"):
		current_max_speed = sprint_speed
	#Horizontal movement input
	var direction := Input.get_axis("left", "right")
	if direction:
		#Accelerate
		velocity.x = move_toward(velocity.x, direction * current_max_speed, acceleration * delta)
	else:
		#Decelerate
		velocity.x = move_toward(velocity.x, 0, deceleration * delta)
	move_and_slide()
