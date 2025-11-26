extends Control

var optionbar_sprites = [load("res://assets/sprites/options/optionbar_00.png"), load("res://assets/sprites/options/optionbar_01.png"), load("res://assets/sprites/options/optionbar_02.png"), load("res://assets/sprites/options/optionbar_03.png"), load("res://assets/sprites/options/optionbar_04.png"), load("res://assets/sprites/options/optionbar_05.png"), load("res://assets/sprites/options/optionbar_06.png"), load("res://assets/sprites/options/optionbar_07.png"), load("res://assets/sprites/options/optionbar_08.png"), load("res://assets/sprites/options/optionbar_09.png"), load("res://assets/sprites/options/optionbar_10.png")]
var volume = 5



func _on_volume_minus_pressed() -> void:
	if volume >= 1:
		volume -= 1
		$volumebar/volumebar_sprite.texture = optionbar_sprites[volume]
		if volume >= 1:
			AudioServer.set_bus_volume_db(0, volume * 2)
		else:
			AudioServer.set_bus_mute(0,true)


func _on_volume_plus_pressed() -> void:
	if volume <= 9:
		volume += 1
		$volumebar/volumebar_sprite.texture = optionbar_sprites[volume]
		AudioServer.set_bus_volume_db(0, volume * 2)
		AudioServer.set_bus_mute(0,false)
