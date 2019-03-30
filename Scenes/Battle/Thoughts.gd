extends ViewportContainer

const scroll_speed = 50


func create_thought(text):
	var l = Label.new()
	l.set_text(text)
	l.anchor_left = 0
	l.anchor_right = 1
	l.set_h_size_flags(SIZE_EXPAND_FILL)
	l.rect_position.y = -10
	l.theme = load("res://Themes/DefaultTheme.tres")
	l.add_font_override("", load("res://Fonts/SmolMenuFont.tres"))
	$Viewport.add_child(l)

func _ready():
	pass

func _process(delta):
	for l in $Viewport.get_children():
		l.rect_position.y += scroll_speed * delta
		if l.rect_position.y > $Viewport.size.y:
			l.queue_free()
	