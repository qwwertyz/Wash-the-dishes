extends Node2D
var balloon_scene = preload("res://dialogue/opening_balloon.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(load("res://dialogue/Intro.dialogue"),"start")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#func _unhandled_input(event: InputEvent) -> void:
	#if event.is_action_pressed("show_dialogue"):
		#var balloon: DialogueManagerExampleBalloon = balloon_scene.instantiate()
		#get_tree().current_scene.add_child(balloon)
		#balloon.start(load("res://dialogue/example_balloon.gd"),"start")
