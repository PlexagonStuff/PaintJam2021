extends KinematicBody2D
onready var timer = $Timer
onready var timer2 = $Stopper
var move = 0
var go = 0
var can = preload("res://SoupCan.tscn")
var stop = 1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		go = 2
		timer.start()
	if Input.is_action_just_pressed("ui_right"):
		go = 1
		timer.start()
	if Input.is_action_just_released("ui_left"):
		timer.stop()
	if Input.is_action_just_released("ui_right"):
		timer.stop()
	if Input.is_action_just_pressed("space"):
		if stop == 1:
			var newCan = can.instance()
			var world = get_tree().current_scene
			world.add_child(newCan)
			newCan.global_position = global_position
			timer2.start()
			stop = 0
			


func _on_Timer_timeout():
	if go == 2:
		global_position.x = global_position.x - 10
	else:
		global_position.x = global_position.x + 10


func _on_Area2D_area_entered(area):
	queue_free()
	get_tree().change_scene("res://Title Page.tscn") # Replace with function body.


func _on_Stopper_timeout():
	stop = 1 # Replace with function body.
