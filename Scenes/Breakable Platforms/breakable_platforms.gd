extends StaticBody2D

enum type_{stone,grass}
@onready var sprites= [$Sprite2D,$Sprite2D2,$Sprite2D3,$Sprite2D4]
@export var platform:type_

func _ready() -> void:
	for sprite in sprites:
		if platform == type_.stone:
			sprite.region_rect = Rect2(0,0,16,16)
		else:
			sprite.region_rect = Rect2(16,0,16,16)
	
	$AnimationPlayer.play("idle")

func _on_area_2d_body_entered(body: Node2D) -> void:
	$AnimationPlayer.play("break")
