extends State
## 创建新游戏, 或存档加载, 地图生成, 实体放置, 等等

func initialize():
	pass

func enter():
	# HACK
	print("preparing")
	
	var mgr : MapGenerationReference = load("res://resource/map_generation_reference/map_generation_reference.tres").duplicate()
	var mg_rule : MapGenerationRule = mgr.level_list[0].map_generation_rule
	mg_rule.world = GlobalValue.main_scene.world
	mg_rule.generate_map()
	
	var timer = get_tree().create_timer(1)
	await timer.timeout
	transitioned.emit(self,"GameLoopState")
	pass

func exit():
	pass

func update(delta:float):
	pass
