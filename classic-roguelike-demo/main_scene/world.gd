extends Node2D
## 用于处理游戏世界事务, 比如碰撞检查和地图生成
class_name World

# tilemaplayers
@onready var floor: TileMapLayer = $Floor
# entity containers
@onready var collectable_layer: Node = $CollectableLayer
@onready var player_layer: Node = $PlayerLayer
@onready var projectile_layer: Node = $ProjectileLayer
@onready var enemy_layer: Node = $EnemyLayer


func check_collision(grid:Vector2i, layer:int)->bool:
	# TODO
	return false


func load_or_generate_level(level_count:int):
	pass
