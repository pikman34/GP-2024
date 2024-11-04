extends CharacterBody2D


const bulletPath = preload("res://laserbeam.tscn")

const SPEED = 300.0
const JUMP_VELOCITY = -500.0


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("turn_left", "turn_right")
		
	if direction<0:
		velocity.x = direction * SPEED
		$flipnode/alienguy.flip_h = true	
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$flipnode/alienguy.flip_h = false
		
	if Input.is_action_just_pressed("turn_right"):
		velocity.x = -direction * SPEED
		
		
	if Input.is_action_just_pressed("fire"):
		shoot()
	
	move_and_slide()

func shoot():
	var bullet = bulletPath.instance()
	
	get_parent().add_child(bullet)
	bullet.position = $flipnode/wherelasercomefrom/Marker2D.global_position
	
	bullet.velocity = $Marker2D - bullet.position

	
