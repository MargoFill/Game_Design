extends Sprite2D

@onready var coffee_cup = get_parent()

#different textures of the cup, higher level is less milk
var empty = load('res://assets/sprites/coffee_minigame/cup_empty.png')
var coffee0 = load('res://assets/sprites/coffee_minigame/cup_coffee_0.png')
var coffee1 = load('res://assets/sprites/coffee_minigame/cup_coffee_1.png')
var coffee2 = load('res://assets/sprites/coffee_minigame/cup_coffee_2.png')
var milk = load('res://assets/sprites/coffee_minigame/cup_milk.png')
var strawberry = load('res://assets/sprites/coffee_minigame/cup_strawberry.png')
var vanilla = load('res://assets/sprites/coffee_minigame/cup_vanilla.png')
var chocolate = load('res://assets/sprites/coffee_minigame/cup_chocolate.png')
var milkpumps = 0
var added_coffee = false
var added_strawberry = false
var added_vanilla = false
var added_chocolate = false

func _ready() -> void:
	self.texture = empty

func _add_coffee() -> void:
#	print("coffeemachinetimer_timeout")
#	print("coffee_cup.cup_on_plate ", coffee_cup.cup_on_plate)
#	print("milkpumps ", milkpumps)
#	print("added_coffee ", added_coffee)
	if coffee_cup.cup_on_plate:
		if milkpumps == 0 and not added_coffee and not added_chocolate and not added_vanilla and not added_strawberry:
			self.texture = coffee0
			added_coffee = true
		elif milkpumps == 1 and not added_coffee and not added_chocolate and not added_vanilla and not added_strawberry:
			self.texture = coffee1
			added_coffee = true


func _add_milk() -> void:
#depending on the previous milk level, the colour of the cup changes
#	print("milktimer_timeout")
#	print("coffee_cup.cup_on_plate ", coffee_cup.cup_on_plate)
#	print("milkpumps ", milkpumps)
#	print("added_coffee ", added_coffee)
	if coffee_cup.cup_on_plate:
		if milkpumps == 0 and not added_coffee and not added_chocolate and not added_vanilla and not added_strawberry:
			self.texture = milk
			milkpumps = 1
		elif milkpumps == 0 and added_coffee and not added_chocolate and not added_vanilla and not added_strawberry:
			self.texture = coffee1
			milkpumps = 1
		elif milkpumps == 1 and added_coffee and not added_chocolate and not added_vanilla and not added_strawberry:
			self.texture = coffee2
			milkpumps = 2


func _add_chocolate() -> void:
	if coffee_cup.cup_on_plate:
		if milkpumps == 1 and not added_coffee and not added_chocolate and not added_vanilla and not added_strawberry:
			self.texture = chocolate
			added_chocolate = true

func _add_strawberry() -> void:
	if coffee_cup.cup_on_plate:
		if milkpumps == 1 and not added_coffee and not added_chocolate and not added_vanilla and not added_strawberry:
			self.texture = strawberry
			added_strawberry = true

func _add_vanilla() -> void:
	if coffee_cup.cup_on_plate:
		if milkpumps == 1 and not added_coffee and not added_chocolate and not added_vanilla and not added_strawberry:
			self.texture = vanilla
			added_vanilla = true

func _reset() -> void:
	self.texture = empty
	milkpumps = 0
	added_coffee = false
	added_strawberry = false
	added_vanilla = false
	added_chocolate = false
