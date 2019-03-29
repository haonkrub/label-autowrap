extends Control
func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
#		$HBoxContainer/VBoxContainer/HBoxContainer/Button.rect_global_position = get_viewport().get_mouse_position()
		$HBoxContainer/VBoxContainer2/Thoughts.create_thought("owowhat'sth i s owowhat'sthis")