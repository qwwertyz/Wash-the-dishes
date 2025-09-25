extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if NavigationManager.spawn_door_tag != null:
		on_spawn(NavigationManager.spawn_door_tag)


func on_spawn(spawn_door_tag):
	var door_path = "Doors/Door_" 
