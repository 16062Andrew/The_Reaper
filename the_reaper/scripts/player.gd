extends CharacterBody2D


var SPEED = 350.0
const JUMP_VELOCITY = -650.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if Global.it == 1:
		SPEED = 450
	else:
		SPEED = 350
	
	if not is_on_floor():
		velocity += get_gravity() * delta * 1.25

	# Handle jump.
	if Input.is_action_just_pressed("upP1") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("leftP1", "rightP1")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
 

	move_and_slide()
