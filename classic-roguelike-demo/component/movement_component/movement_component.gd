extends Component
## 用于处理可移动实体的移动行为
class_name MovementComponent

var master : Entity

func initialize():
	master = owner

func move(direction : Vector2i):
	var world : World = GlobalValue.main_scene.world
	if world.check_blockmovement(master.grid_pos + direction):
		var tween = create_tween()
		tween.tween_property(master.sprite_2d, "position", direction*GlobalValue.tile_size*0.5, 0.05)
		tween.chain().tween_property(master.sprite_2d, "position", Vector2.ZERO, 0.05)
		return
	else:
		master.position += Vector2(direction * GlobalValue.tile_size)
		master.sprite_2d.position = -Vector2(direction*GlobalValue.tile_size)
		var tween = create_tween()
		tween.tween_property(master.sprite_2d, "position", Vector2.ZERO, 0.1)
