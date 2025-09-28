extends CanvasLayer
@onready var color_rect: ColorRect = $ColorRect
@onready var animation_player: AnimationPlayer = $AnimationPlayer

signal transition_finished

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	color_rect.visible = false

func transition():
	color_rect.visible = true
	animation_player.play("fade_to_black")
	await animation_player.animation_finished
	animation_player.play("RESET")
	color_rect.visible = false
	transition_finished.emit()
	
