extends Node2D
var can = preload("res://MarilynMonroe.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	global_position = Vector2(rand_range(0,1000), -100)
	var newCan = can.instance()
	var world = get_tree().current_scene
	world.add_child(newCan)
	newCan.global_position = global_position # Replace with function body.
