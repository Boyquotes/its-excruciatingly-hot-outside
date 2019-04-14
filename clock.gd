extends Label

var time = 0


func _ready() -> void:
	self.time = 50


func _process(delta: float) -> void:
	self.time += delta
	self.text = self.format_time()


func format_time() -> String:
	var t = self.time
	var m = int(t / 60)
	t = fmod(t, 60.0)
	var s = int(t)
	t = fmod(t, 1.0) * 100
	return "%02d:%02d:%02d" % [m, s, t]
