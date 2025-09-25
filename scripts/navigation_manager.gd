extends Node

func go_to_level(destination_scene, destination_door):
	var file = "res://scenes/" + str(destination_scene) + ".tscn"
	if file != null:
		get_tree().change_scene_to_file(file)
	
