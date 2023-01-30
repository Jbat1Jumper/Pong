extends KinematicBody2D

export var paddle = "left"

func _process(delta):
	var speed = Config.paddle_speed
	if Input.is_action_pressed(paddle + "_paddle_up"):
		self.move_and_collide(Vector2.UP * speed * delta)
	elif Input.is_action_pressed(paddle + "_paddle_down"):
		self.move_and_collide(Vector2.DOWN * speed * delta)
