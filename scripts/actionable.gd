extends Area2D

@export var dialogue_resource: DialogueResource # attach dialogue file
@export var dialogue_start: String = "start" #specify start
signal tutorial_finished

func action():#show balloon when action is actioned
	tutorial_finished.emit()
