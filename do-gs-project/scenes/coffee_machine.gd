extends Area2D

var filled = false
var pressed = false
@onready var coffeemachinetimer = $coffeemachinetimer
@onready var coffee_cup = get_parent().get_node("coffee_cup")
<<<<<<< HEAD

func _on_button_pressed() -> void:
	if pressed == false:
		if coffee_cup.cup_on_plate:
			pressed = true
			coffeemachinetimer.start()
		
=======
@onready var coffeedrop: AnimatedSprite2D = $"../coffeedrop"
@onready var milk_button: Button = $"../coffee_milk/Sprite2D/milk_button"

func _on_button_pressed() -> void:
	print("pressed")
	if pressed == false:
		if coffee_cup.cup_on_plate:
			pressed = true
			coffeedrop.play("1")
			coffeemachinetimer.start()

		


func _on_coffeemachinetimer_timeout() -> void:
	coffeedrop.stop()
	coffeedrop.play("nothing")
	
>>>>>>> fb5bb6e (lollll)
