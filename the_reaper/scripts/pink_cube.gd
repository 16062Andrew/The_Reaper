extends CharacterBody2D


const SPEED = 150.0
var direction : Vector2 = Vector2.ZERO


func _physics_process(delta: float) -> void:
	# Add the gravity.
	direction.x = Input.get_action_strength("rightP1") - Input.get_action_strength("leftP1")
	direction.y = Input.get_action_strength("downP1") - Input.get_action_strength("upP1")
	
	self.velocity = self.direction * SPEED

	move_and_slide()
