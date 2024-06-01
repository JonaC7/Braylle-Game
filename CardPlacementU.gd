extends Control

@onready var card = preload("res://Scene/Basic/cardAOnBoardU.tscn")


func _on_mouse_entered():
	Game.mouseOnePlacement = true


func _on_mouse_exited():
	Game.mouseOnePlacement = false


func placeCard():
	var cardTemp = card.instantiate()
	var projectResolution = ProjectSettings.get_setting("display/window/size/viewport_width")
	var projectResolutionHeight = ProjectSettings.get_setting("display/window/size/viewport_height")
	cardTemp.global_position = Vector2(862, 215) - self.position
	add_child(cardTemp)
