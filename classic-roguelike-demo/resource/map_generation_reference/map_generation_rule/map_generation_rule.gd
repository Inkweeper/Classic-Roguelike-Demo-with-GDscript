extends Resource
## 地图生成规则, 用于给 World 类加载, 生成新地图
class_name MapGenerationRule

var world : World
var level_count : int # 当前层数, 从world输入, 用于地图生成时的难度控制

@export var enemy_spawn_list : Dictionary
@export var max_enemy_cost : int


func generate_map():
	pass

func spawn_enemy():
	pass
