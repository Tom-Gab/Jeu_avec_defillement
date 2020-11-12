extends KinematicBody2D

const speed = 420
var velocity = Vector2()
export var gravity = 2000
export var impulsion = -900
var is_jumping = false
onready var hearts = $hearts
export(int) var current_frame
var health = null
func _ready():
	health = 3
	pass
func get_input():
	velocity.x = 0
	if Input.is_action_pressed("droite"):
		velocity.x += speed

	if Input.is_action_pressed("gauche"):
		velocity.x -= speed

	if Input.is_action_just_pressed("ui_select") and !is_jumping and is_on_floor():
		is_jumping = true
		velocity.y = impulsion
		
		
func _physics_process(delta):
	get_input()
	if health == 3:
		current_frame = 0
	elif health == 2:
		current_frame = 1
		print("-1 bitch")
	elif health == 1:
		current_frame = 2
	elif health == 0:
		print ("out of lives")
		current_frame = 3
		get_tree().change_scene("res://scenes/death.tscn")
	hearts.frame = current_frame
	velocity.y += gravity * delta
	if is_jumping and is_on_floor():
		is_jumping = false
	velocity = move_and_slide(velocity,Vector2(0,-1))
