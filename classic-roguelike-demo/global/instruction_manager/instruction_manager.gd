extends Node

# 处理玩家在waiting_for_instruction期间执行的操作(方向键/点击地图)
# 以及发出的指令(gui互动如技能释放,瞄准发射互动)
# 将他们转化为Action

signal instruction_given

func update():
	
	pass
	
func _unhandled_input(event: InputEvent) -> void:
	
	pass
