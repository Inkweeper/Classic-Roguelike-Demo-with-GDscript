extends Resource
## 地图生成规则, 用于给 World 类加载, 生成新地图
class_name MapGenerationRule

var level_count : int # 当前层数, 从world输入
var world : World


func initialize(p_level_count : int, p_world : World):
	level_count = p_level_count
	world = p_world

func generate_map():
	pass

func spawn_enemy():
	pass
