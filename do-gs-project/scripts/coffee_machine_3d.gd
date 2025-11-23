extends StaticBody3D

var makecoffee_scence = load("res://scenes/coffee_minigame.tscn")
var makecoffee = makecoffee_scence.instantiate()

#doesnt work yet
func interact() -> void:
	add_child(makecoffee)
	%Player._free_mouse()

func _finish_coffee() -> void:
	makecoffee.queue_free()
