extends State
## 创建新游戏, 或存档加载, 地图生成, 实体放置, 等等

func initialize():
	pass

func enter():
	# FIXME
	print("preparing")
	var timer = get_tree().create_timer(1)
	await timer.timeout
	transitioned.emit(self,"GameLoopState")
	pass

func exit():
	pass

func update(delta:float):
	pass
