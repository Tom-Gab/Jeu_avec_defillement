extends Node2D


func _ready():
	pass # Replace with function body.


func _on_bas_body_entered(body):	
	var Character = get_node("Character")
	print("sup people")
	Character.health -= 1
	
	Character.position.x = 74
	Character.position.y = 452


func _on_Win_body_entered(body):
	get_tree().change_scene("res://Scenes/Win.tscn")
