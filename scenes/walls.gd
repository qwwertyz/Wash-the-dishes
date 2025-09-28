class_name MazeTilemap

extends TileMapLayer
var empty_cells = []


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var cells = get_used_cells()
	for cell in cells:
		var data = get_cell_tile_data(cell)
		if data.get_custom_data("isEmpty"):
			empty_cells.push_front(cell)
		print(data)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func get_random_empty_cell_pos():
	return to_global(map_to_local(empty_cells.pick_random()))
