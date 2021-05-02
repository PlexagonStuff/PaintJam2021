extends KinematicBody2D
var speed = 0.5
onready var sound = $AudioStreamPlayer2D
onready var collision = $Area2D/CollisionShape2D
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position.y = global_position.y + speed
	speed = speed*1.02


func _on_Area2D_area_entered(area):
	print(area)
	queue_free()
	sound.play()
	 # Replace with function body.
