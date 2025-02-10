extends Node2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	queue_redraw()
	pass

func _draw() -> void:
	var r = Rect2(10, 10, 100, 30)
	draw_rect(r, Color.BLUE, false, 5)
	draw_line(Vector2(50, 50), Vector2(200,200), Color.MAROON)
	draw_circle(Vector2(500,500), 100, Color.LAWN_GREEN, true)
	
	var v = get_viewport_rect()
	
	draw_line(Vector2(0, v.size.y), Vector2(v.size.x, 0), Color.CRIMSON)
	
	for i in range(10, -1, -1):
		print(i)
		
	var basket = ["apple", "banana", "carrot"]
	
	for f in basket:
		print(f)
		
	for i in range(basket.size()):
		print(basket[i])
		
	var num_lines = 5.5
	var s = get_viewport_rect().size
	var w = s.y / num_lines
	
	for i in range(num_lines):
		draw_line(Vector2(s.x, i * w), Vector2(0, i * w), Color.BISQUE)
		
	var num_h_lines = 4
	var gap = 50
	var border = 100
	var centre = v.get_center()
	var numCircles = 20
	
	for i in range(4):
		draw_line(Vector2(100, border + gap * i), Vector2(v.size.x - border, border + gap * i), Color.MINT_CREAM)
	
	var m = get_global_mouse_position()
	print(m)
	var num_c_lines = m.x / 2
	gap = v.size.y / num_c_lines
	var numRectangles = 10
	
	
	for i in range(num_c_lines):
		draw_line(Vector2(0, gap * i), Vector2(v.size.x, v.size.y - (i * gap)), Color.PALE_VIOLET_RED)
	for i in range(50):
		draw_line(Vector2(v.size.x, gap * i), Vector2(0, v.size.y - i * gap), Color.PALE_VIOLET_RED)
		
	for i in range(numCircles):
		var y = i/float(numCircles)
		draw_circle(Vector2(i * w + (border / 2), 200 + (border / 2)), 60, Color.from_hsv(y, 1, 1))
	
	for i in range(numRectangles):
		var q = gap * 20
		var h = i / float(numRectangles)
		draw_rect(Rect2(h, q, 250, h), Color.from_hsv(h, 1, 1), true)
		
	

	pass
