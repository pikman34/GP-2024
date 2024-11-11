extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var f:float
	var g:float
	var h:float
	
	f = 10
	g = 20
	h = 3
	
	
	f += 2 # add 2 to f
	f = f + 2
	g = f - 5
	
	h *= 2
	g = h / 3
	
	
	var i:int
	var j:int
	
	var k:int
	
	i = 10
	j = 4
	k = i / j
	
	print(i)
	print(j)
	print(k)
	
	print(f)
	print(g)
	print(k)
	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
