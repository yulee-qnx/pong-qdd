extends Area2D

const DEFAULT_SPEED = 100

var _speed = DEFAULT_SPEED
var direction = Vector2.LEFT

@onready var _initial_pos = position

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
	_speed += delta * 2
	position += _speed * delta * direction


func reset():
	direction = Vector2.LEFT
	position = _initial_pos
	_speed = DEFAULT_SPEED
