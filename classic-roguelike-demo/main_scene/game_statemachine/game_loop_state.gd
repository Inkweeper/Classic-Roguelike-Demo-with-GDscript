extends State
## 游戏主循环

'''
子状态机的初始化时机:
	子状态机GameLoopStatemachine在initialize时需要获取游戏地图以及各种实体的信息
	这意味着当子状态机initialize时, 
	PreparationState必然已经完成行动(存档已加载, 实体已经正确放入游戏地图中)
	所以子状态机的正确初始化时机在本状态进入时
'''

@onready var game_loop_statemachine: Statemachine = $GameLoopStatemachine



func initialize():
	pass

func enter():
	game_loop_statemachine.initialize()

	pass

func exit():
	pass

func update(delta:float):
	pass
