extends Node2D

@onready var main = get_tree().get_root().get_node("main")
@onready var laser = load("res://laserbeam.tscn")

func _ready():
	shoot()
	
func shoot():
	if Input.is_action_just_pressed("fire"):
		var instance = laser.instantiate()
		instance.spawnPos = global_position
		instance.spawnRot = rotation
		instance.zdex = z_index -1
		main.add_child.call_deferred(instance)
		

func _on_lasercooldown_timeout():
	shoot()
