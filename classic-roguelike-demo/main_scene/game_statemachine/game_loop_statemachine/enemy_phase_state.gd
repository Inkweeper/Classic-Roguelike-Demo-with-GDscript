extends State
# EnemyPhaseState

func initialize():
	pass

func enter():
	var enemy_list : Array[Enemy]
	for node in GlobalValue.main_scene.world.enemy_layer.get_children():
		if node is Enemy:
			enemy_list.append(node)
	while(not enemy_list.is_empty()):
		var enemy = enemy_list.pop_front() as Enemy
		if enemy.if_should_act():
			# 敌人通过决策树, 决定向GlobalValue传递的节点
			enemy.try_execute("behave",[])
		ActionInterpreter.execute_action()
	# 所有敌人节点问询和行动完毕
	transitioned.emit(self,"TickEndingState")

func exit():
	pass

func update(delta:float):
	pass
