extends CharacterBody2D


const SPEED = 150.0
var direction : Vector2 = Vector2.ZERO


func _physics_process(delta: float) -> void:
	# Add the gravity.
	direction.x = Input.get_action_strength("rightP2") - Input.get_action_strength("leftP2")
	direction.y = Input.get_action_strength("downP2") - Input.get_action_strength("upP2")
	
	self.velocity = self.direction * SPEED

	move_and_slide()
