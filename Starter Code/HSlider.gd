extends HSlider

var instance = preload("res://bullet.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	var sliderv = 0
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var sliderv = 0
	$count.text = str(value)
	
	##if Input.is_action_pressed("ui_accept"):

