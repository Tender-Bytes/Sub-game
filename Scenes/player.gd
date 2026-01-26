extends CharacterBody2D
@onready var _animated_sprite = $AnimatedSprite2D
@export var speed = 10
@export var jump_velocity : float = 10
@export var gravity : float = 12.0



var direction := Vector2.ZERO


func get_input():
	var input_direction = Input.get_axis("left", "right")
	if Input.is_action_just_pressed("up"):
		velocity.y = jump_velocity * -speed
	velocity.x = input_direction * speed
	if is_on_floor():
		print ('is on floor')
		return not is_on_floor 
		print ('is not on floor')
		  
	

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		_animated_sprite.play("walk")
		_animated_sprite.flip_h = false
		
	elif Input.is_action_pressed("left"):
		_animated_sprite.play("walk")
		_animated_sprite.flip_h = true
	else:
		_animated_sprite.play("idle")
		
	velocity.y += gravity * delta
	
	get_input()
	move_and_slide()

	
