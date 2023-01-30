extends Node2D

const ball_scene = preload("res://ball.tscn")

var left_score = 0
var right_score = 0

func _ready():
	reset_game()


func _on_right_killzone_body_entered(body: Node2D):
	if not body.is_in_group("ball"):
		return
	print("LEFT PLAYER WINS")
	left_score += 1
	reset_game()


func _on_left_killzone_body_entered(body):
	if not body.is_in_group("ball"):
		return
	print("RIGHT PLAYER WINS")
	right_score += 1
	reset_game()

func reset_game():
	for ball in get_tree().get_nodes_in_group("ball"):
		ball.queue_free()
	
	var ball = ball_scene.instance()
	add_child(ball)
	ball.position = $ball_start.position

