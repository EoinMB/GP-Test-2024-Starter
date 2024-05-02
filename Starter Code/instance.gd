extends Node2D

var mynode = preload("res://bomba.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	#var instance = mynode.instantiate()
	#add_child(instance)
	inst(Vector2(500,500))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func inst(pos):
	var instance = mynode.instantiate()
	instance.position = pos
	add_child(instance)
	
	
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		inst(Vector2(500,250))
		if $HSlider.value >=2:
			inst(Vector2(750,500))
		if $HSlider.value >=3:
			inst(Vector2(250,500))
		if $HSlider.value >=4:
			inst(Vector2(625,375))
		if $HSlider.value >=5:
			inst(Vector2(500-125,250+125))
		if $HSlider.value >=6:
			inst(Vector2(500-125,500+125))
		if $HSlider.value >=7:
			inst(Vector2(500+125,500+125))
		if $HSlider.value >=7:
			inst(Vector2(500,500+250))

