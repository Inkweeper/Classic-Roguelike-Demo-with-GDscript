extends Component
## 用于处理可移动实体的移动行为
class_name MovementComponent

var master : Entity

func initialize():
	master = owner

func move(direction : Vector2i):
	if abs(direction).x > 1 or abs(direction).y > 1:
		push_error(str(master)+"trying to move a longer step! ")
		return
	master.position += Vector2(direction * GlobalValue.tile_size)
