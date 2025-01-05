extends Resource
## 用于记录每层地图的生成类型(程序生成/预制,程序生成规则), 生成状态, 以供生成地图的对象参考
class_name MapGenerationReference

@export var level_list : Array[LevelRecord] = []
