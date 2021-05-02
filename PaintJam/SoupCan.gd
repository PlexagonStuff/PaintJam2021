extends KinematicBody2D
var speed = 2

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position.y = global_position.y - speed
	speed = speed*1.02


func _on_Area2D_area_entered(area):
	queue_free()
	Global.score = Global.score + 1 # Replace with function body.
