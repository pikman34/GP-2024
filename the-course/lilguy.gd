extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@export var speed:float = 5
@export var rot_speed:float = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	# rotate(deg_to_rad(rot_speed * delta))
	# translate(Vector2(5 * delta, speed * delta))
	
	# global_translate(Vector2(0, speed * delta))
	
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0, -speed * delta))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0, speed * delta))
	if Input.is_key_pressed(KEY_LEFT):
		translate(Vector2(-speed * delta, 0))
	if Input.is_key_pressed(KEY_RIGHT):
		translate(Vector2(speed * delta, 0))
	if Input.is_key_pressed(KEY_A):
		rotate(deg_to_rad(-rot_speed * delta))
	if Input.is_key_pressed(KEY_D):
		rotate(deg_to_rad(rot_speed * delta))
	var s = speed
	var rs = rot_speed
	if (Input.is_key_pressed(KEY_SHIFT)):
		s = s * 5
		rs * rs * 2
	
	pass
