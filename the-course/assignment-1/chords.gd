extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_A_pressed() -> void:
	$Achord.play()


func _on_B_pressed() -> void:
	$Bchord.play()


func _on_C_pressed() -> void:
	$Cchord.play()


func _on_D_pressed() -> void:
	$Dchord.play()

func _on_E_pressed() -> void:
	$Echord.play()


func _on_F_pressed() -> void:
	$Fchord.play()


func _on_G_pressed() -> void:
	$Gchord.play()
