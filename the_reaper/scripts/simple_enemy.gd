extends CharacterBody2D

const speed = 300
var direction : Vector2 = Vector2.ZERO

@onready var Player = $"../Player"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	direction.x = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Player.position.x > self.position.x:
		self.position.x += 1
	if Player.position.x < self.position.x:
		self.position.x -= 1
	if Player.position.y > self.position.y:
		self.position.y += 1




func _on_body_body_entered(body: Node2D) -> void:
		get_tree().change_scene_to_file("res://scenes/Main.tscn")
