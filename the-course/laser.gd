extends CharacterBody2D

@export var SPEED = 1000

var dir : float
var spawnPos: Vector2
var spawnRot: float
var zdex : int

func _ready():
	global_position = spawnPos
	global_rotation = spawnRot
	z_index = zdex

func _physics_process(_delta):
	velocity = Vector2(SPEED, 0).rotated(dir)
	move_and_slide()
	
func _on_area_2d_body_entered(_body):
	print("Hit")
	queue_free()
	
func _on_life_timeout():
	queue_free()
