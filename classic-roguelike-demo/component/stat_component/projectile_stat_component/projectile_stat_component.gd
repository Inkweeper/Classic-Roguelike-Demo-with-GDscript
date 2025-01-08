extends Component
class_name ProjectileStatComponent

@export var stat : ProjectileStat

# /universal

func wait_a_tick():
	stat.tick_to_wait -= 1

func reset_tick_to_wait():
	stat.tick_to_wait = int(Main.TICK_PER_CYCLE / stat.speed)

func if_should_act()->bool:
	if stat.tick_to_wait <= 0:
		reset_tick_to_wait()
		return true
	else:
		wait_a_tick()
		return false

# /
