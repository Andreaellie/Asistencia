extends Sprite2D

var velocidad = 300
var angulo_velocidad = PI


func _process(delta):
	print('Hola class CUCEI')
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1

	rotation += angulo_velocidad * direction * delta

	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * velocidad

	position += velocity * delta
	
	
