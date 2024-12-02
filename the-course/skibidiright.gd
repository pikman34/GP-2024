extends Sprite2D

@export var speed = 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var r = get_viewport_rect()
	global_position.x += speed * delta
	if global_position.x > r.size.x:
		global_position.x += speed * delta
	pass
