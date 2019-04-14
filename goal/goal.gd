extends Sprite

signal goal_entered(body)


func _ready() -> void:
	$Area2D.connect("body_entered", self, "on_body_entered")


func on_body_entered(body: PhysicsBody2D):
	self.emit_signal("goal_entered", body)
