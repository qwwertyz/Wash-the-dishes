extends CharacterBody2D
enum States {IDLE, WALKING, TALKING}
var state = States.IDLE
var direction
var last_direction = Vector2.ZERO
const SPEED = 3000.0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("up"):
		direction = Vector2.UP
	elif Input.is_action_pressed("down"):
		direction = Vector2.DOWN
	elif Input.is_action_pressed("left"):
		direction = Vector2.LEFT
	elif Input.is_action_pressed("right"):
		direction = Vector2.RIGHT	
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
