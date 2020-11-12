extends TextureRect


func _on_Restart_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
# Called when the node enters the scene tree for the first time.

func _on_Quit_pressed():
	get_tree().quit()
	
	
func _process(delta):
	pass
	

