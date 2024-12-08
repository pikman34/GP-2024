extends Control

var is_major = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_A_pressed() -> void:
	if is_major:
		$Achord.play()
	else:
		$Aminor.play()

func _on_B_pressed() -> void:
	if is_major:
		$Bchord.play()
	else:
		$Bminor.play()

func _on_C_pressed() -> void:
	if is_major:
		$Cchord.play()
	else:
		$Cminor.play()

func _on_D_pressed() -> void:
	if is_major:
		$Dchord.play()
	else:
		$Dminor.play()

func _on_E_pressed() -> void:
	if is_major:
		$Echord.play()
	else:
		$Eminor.play()

func _on_F_pressed() -> void:
	if is_major:
		$Fchord.play()
	else:
		$Fminor.play()

func _on_G_pressed() -> void:
	if is_major:
		$Gchord.play()
	else:
		$Gminor.play()

func _on_major_minor_toggle_pressed() -> void:
	is_major = !is_major
	
