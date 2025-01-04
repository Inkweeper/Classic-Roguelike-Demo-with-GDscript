extends Node

# 处理玩家在waiting_for_instruction期间执行的操作(方向键/点击画面某处)
# 以及发出的指令(gui互动如技能释放,瞄准发射互动)
# 将他们转化为Action

signal instruction_given(action:Action)

var activated : bool = false

func update():
	pass
	
func _unhandled_key_input(event: InputEvent) -> void:
	if not activated : return
	var move_direction : Vector2i = Vector2i.ZERO
	
	if event.is_action_pressed("1"):
		move_direction = Vector2i(-1,1)
	elif event.is_action_pressed("2"):
		move_direction = Vector2i(0,1)
	elif event.is_action_pressed("3"):
		move_direction = Vector2i(1,1)
	elif event.is_action_pressed("4"):
		move_direction = Vector2i(-1,0)
	elif event.is_action_pressed("6"):
		move_direction = Vector2i(1,0)
	elif event.is_action_pressed("7"):
		move_direction = Vector2i(-1,-1)
	elif event.is_action_pressed("8"):
		move_direction = Vector2i(0,-1)
	elif event.is_action_pressed("9"):
		move_direction = Vector2i(1,-1)
	elif event.is_action_pressed("5"):
		move_direction = Vector2i(0,0)
	
	#move_direction.x = int(event.get_action_strength("right") - event.get_action_strength("left"))
	#move_direction.y = int(event.get_action_strength("down") - event.get_action_strength("up"))
	
	#move_direction.x = int(Input.get_axis("left","right"))
	#move_direction.y = int(Input.get_axis("up","down"))
	#print(move_direction)
	
	if not move_direction == Vector2i.ZERO : 
		var action = Action.new_move_action(GlobalValue.player, [move_direction])
		activated = false
		instruction_given.emit(action)
		return
