extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if NavigationManager.spawn_door_tag != null:
		on_spawn(NavigationManager.spawn_door_tag)

	

func on_spawn(destination_door):
	var door_path = "Doors/Door_" + destination_door
	var door = get_node(door_path)
	NavigationManager.on_player_spawn(door.spawn_location.global_position, door.spawn_direction)
	#accessing the marker's att
	
