extends KinematicBody2D

const SLIDE_NORMAL = Vector2(0, -1)

export (float) var max_speed = 300
var speed = max_speed

func _physics_process(delta: float) -> void:
	var vel = self.get_input().normalized() * self.speed
	self.move_and_slide(vel, SLIDE_NORMAL)


func get_input():
	return Vector2(get_horizontal_input(), get_vertical_input())


func get_horizontal_input():
	var x: float = 0
	if Input.is_action_pressed("ui_left"):
		x -= 1
	if Input.is_action_pressed("ui_right"):
		x += 1
	return x


func get_vertical_input():
	var y: float = 0
	if Input.is_action_pressed("ui_up"):
		y -= 1
	if Input.is_action_pressed("ui_down"):
		y += 1
	return y


func on_goal_entered(body) -> void:
	print("Entered goal! " + str(body))
