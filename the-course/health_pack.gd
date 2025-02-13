extends Node2D

@export var size = 100
@export var line_size = 2
@export var color:Color = Color.WHITE
@onready var radius = size / 2 


func _draw() -> void:
	# draw health pack
	draw_arc(Vector2.ZERO, radius, PI, TAU, 6, color, line_size)
