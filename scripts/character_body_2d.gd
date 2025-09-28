extends CharacterBody2D
enum States {IDLE, WALKING, TALKING}
var state = States.IDLE
var direction
var last_direction = Vector2.ZERO
const SPEED = 2500.0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var actionable_finder: Area2D = $Direction/ActionableFinder


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	NavigationManager.player_spawn.connect(on_spawn)

func on_spawn(position: Vector2, direction:String):
	print("spawn in new scene")
	print(str(position) + "  " + direction)
	global_position = position
	animated_sprite_2d.play("idle_" + direction)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:# no idea. called when overlap
	if Input.is_action_pressed("show_dialogue"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
			return
	
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("up"):
		direction = Vector2.UP
		animation_player.play("actionable_up")
	elif Input.is_action_pressed("down"):
		direction = Vector2.DOWN
		animation_player.play("actionable_down")
	elif Input.is_action_pressed("left"):
		direction = Vector2.LEFT
		animation_player.play("actionable_left")
	elif Input.is_action_pressed("right"):
		direction = Vector2.RIGHT	
		animation_player.play("actionable_right")
	else:
		direction = Vector2.ZERO
		
	if direction != Vector2.ZERO:
		last_direction = direction
	
	
	if direction == Vector2.LEFT:
		animated_sprite_2d.play("walk_left")
	elif direction == Vector2.RIGHT:
		animated_sprite_2d.play("walk_right")
	elif direction == Vector2.UP:
		animated_sprite_2d.play("walk_back")
	elif direction == Vector2.DOWN:
		animated_sprite_2d.play("walk_front")
	if direction == Vector2.ZERO:
		if last_direction == Vector2.LEFT:
			animated_sprite_2d.play("idle_left")
		elif last_direction == Vector2.RIGHT:
			animated_sprite_2d.play("idle_right")
		elif last_direction == Vector2.UP:
			animated_sprite_2d.play("idle_back")
		elif last_direction == Vector2.DOWN:
			animated_sprite_2d.play("idle_front")
	
		
	velocity = direction * SPEED * delta
	move_and_slide()
