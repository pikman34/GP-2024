extends Area2D

var score = 0

func _on_body_entered(body: Node2D) -> void:
	if body.name == "JUMPdude":
		body.score = body.score + 1
		self.queue_free()
	pass # Replace with function body.
