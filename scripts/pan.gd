extends Sprite2D
@onready var actionable: Area2D = $Actionable
@onready var collision_shape_2d: CollisionShape2D = $Actionable/CollisionShape2D
@onready var tutorial: Label = $Tutorial


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	actionable.tutorial_finished.connect(on_tutorial_finished)
	tutorial.visible = true

func on_tutorial_finished():
	tutorial.visible = false
	print('label should be invisible')
	get_tree().change_scene_to_file("res://scenes/cook_minigame.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
