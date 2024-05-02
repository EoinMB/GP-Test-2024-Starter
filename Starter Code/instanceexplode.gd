extends Node2D

var mynode = preload("res://bomb_explode.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var instance = mynode.instantiate()
	add_child(instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		var instance = mynode.instantiate()
		add_child(instance)
