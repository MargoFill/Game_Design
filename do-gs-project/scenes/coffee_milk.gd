extends Area2D

var pressed = false
@onready var milktimer = $milktimer
@onready var coffee_cup = get_parent().get_node("coffee_cup")
<<<<<<< HEAD
=======
@onready var milkdrop: AnimatedSprite2D = $"../milkdrop"
>>>>>>> fb5bb6e (lollll)


func _on_milktimer_timeout() -> void:
	print("test2")
	pressed = false
<<<<<<< HEAD
=======
	milkdrop.stop()
	
>>>>>>> fb5bb6e (lollll)


func _on_milk_button_pressed() -> void:
	print("test3")
	if pressed == false:
		if coffee_cup.cup_on_plate:
			pressed = true
			milktimer.start()
<<<<<<< HEAD
=======
			milkdrop.play("1")
	if pressed == true:
		print("milk pressed")
>>>>>>> fb5bb6e (lollll)
