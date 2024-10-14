extends CharacterBody2D

var vel = Vector2(0, 1)
var speed = 300

	
func _physics_process(delta):

	var collision_info = move_and_collide(velocity.normalized() * delta * speed)

func _on_area_2d_body_entered(body):
	queue_free()
	
func _on_life_timeout():
	queue_free()

func instance():
	pass
