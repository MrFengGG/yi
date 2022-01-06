extends TextureRect

export var yin_texture : Texture
export var yang_texture : Texture

var number : int

func _ready():
	if number == 0:
		texture = yin_texture
	else:
		texture = yang_texture
func initialize(from : int):
	self.number = from
