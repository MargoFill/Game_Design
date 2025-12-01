extends Node2D
@onready var serve_button: Button = $serve/Sprite2D/serve_button
@onready var serve_hover: Sprite2D = $serve_hover

const _3D_SCENE = preload("res://scenes/3d_scene.tscn")
@onready var sprite_2d: Sprite2D = $serve/Sprite2D

func _ready() -> void:
	serve_hover.visible = false
	
	
var player: Node = null
func set_player(p):
	player = p

func _on_serve_button_pressed() -> void:
	player._capture_mouse()
	print("Milkpumps: ", Global_Values.milkpumps, " Added Coffee: ", Global_Values.added_coffee, " Added Strawberry: ", Global_Values.added_strawberry, " Added Chocholate: ", Global_Values.added_chocolate, " Added Vanilla: ", Global_Values.added_vanilla)
	queue_free()
	get_tree().current_scene.process_mode = Node.PROCESS_MODE_INHERIT




func _on_serve_button_mouse_entered() -> void:
	serve_hover.visible = true
	

func _on_serve_button_mouse_exited() -> void:
	serve_hover.visible = false
