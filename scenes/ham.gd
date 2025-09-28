extends CharacterBody2D
@onready var walls: TileMapLayer = $"../walls"
#@export var tile_map: MazeTilemap

const SPEED = 2000.0
var direction: Vector2
var possible_direction:Array = [Vector2i.DOWN,Vector2i.UP, Vector2i.LEFT, Vector2i.RIGHT]

func _process(delta: float) -> void:
	direction = Vector2i.UP
