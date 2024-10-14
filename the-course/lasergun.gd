extends Node2D

const laserPath = preload("res://laserbeam.tscn")

var can_fire = true;

func _ready():
		pass
		
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		shoot()
		

	
func shoot():
	var laser = laserPath.instance()
	
	get_parent().add_child(laser)
	laser.position = $"../../wherelasercomefrom/Marker2D".global_position
	
