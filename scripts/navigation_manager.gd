extends Node
signal player_spawn
var spawn_door_tag

func go_to_level(destination_scene, destination_door):
	TransitionScreen.transition()
	await TransitionScreen.transition_finished
	print("finish transition, keep going")
	var file = "res://scenes/" + str(destination_scene) + ".tscn"
	spawn_door_tag = destination_door
	if file != null:
		get_tree().change_scene_to_file(file)
	
func on_player_spawn(position: Vector2, direction: String):
	player_spawn.emit(position, direction)
