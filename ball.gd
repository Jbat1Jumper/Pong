extends RigidBody2D

export var initial_force = 50

var initial_position = null

func _ready():
	initial_position = self.position
	self.apply_impulse(
		Vector2.ZERO,
		Vector2.RIGHT * initial_force
	)

func _process(delta):
	if self.linear_velocity.x < 0:
		$sprite_left.show()
		$sprite_right.hide()
	else:
		$sprite_left.hide()
		$sprite_right.show()


func _on_ball_body_entered(body):
	if body.is_in_group("paddle"):
		$paddle_colission_sound.play()
