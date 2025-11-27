extends Control

func _ready() -> void:
	DialogueManager.dialogue_ended.connect(_on_dialogue_manager_dialogue_ended)
	$BlackOverlay.visible = true
	DialogueManager.show_dialogue_balloon(load("res://dialogues/00_letter_mum.dialogue"))

func _on_dialogue_manager_dialogue_ended(resource: DialogueResource) -> void:
	$BlackOverlay.visible = false
