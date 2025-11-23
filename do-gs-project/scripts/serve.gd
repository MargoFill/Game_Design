extends Area2D

@export var coffee_machine: StaticBody3D

func _on_serve_button_pressed() -> void:
	%CoffeeMachine3D._finish_coffee()
