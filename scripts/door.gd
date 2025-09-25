extends StaticBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var interactable_component: InteractableComponent = $InteractableComponent
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

@export var destination_scene: String
@export var destination_door: String
@export var spawn_direction = "up"
@onready var spawn_location: Marker2D = $SpawnLocation

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	interactable_component.interactable_activated.connect(on_interactable_activated)
	interactable_component.interactable_deactivated.connect(on_interactable_deactivated)
	collision_layer = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func on_interactable_activated():
	animated_sprite_2d.play("door_open")
	collision_layer = 2
	
func on_interactable_deactivated():
	animated_sprite_2d.play("door_close")
	collision_layer = 1 
	NavigationManager.go_to_level(destination_scene,destination_door)
