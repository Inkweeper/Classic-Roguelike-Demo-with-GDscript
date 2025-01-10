extends Node2D
## 用于处理游戏世界事务, 比如碰撞检查和地图生成
class_name World

# tilemaplayers
@onready var floor: TileMapLayer = $Floor
@onready var aiming_line: TileMapLayer = $AimingLine

# entity containers
@onready var facility_layer: Node = $FacilityLayer
@onready var collectable_layer: Node = $CollectableLayer
@onready var player_layer: Node = $PlayerLayer
@onready var projectile_layer: Node = $ProjectileLayer
@onready var enemy_layer: Node = $EnemyLayer

## 获得某格某层的碰撞对象
func get_collider_list(grid:Vector2i, layer:int)->Array[Dictionary]:
	var target_pos : Vector2 = floor.map_to_local(grid) + floor.global_position
	var direct_space_state = get_world_2d().direct_space_state
	var parameters =  PhysicsPointQueryParameters2D.new()
	parameters.position = target_pos
	parameters.collide_with_areas = true
	parameters.collision_mask = layer
	
	var results: Array[Dictionary] = direct_space_state.intersect_point(parameters)
	# HACK
	#print(results)
	return results

## 检查任意碰撞层在某格的碰撞
func check_collision(grid:Vector2i, layer:int)->bool:
	var collider_list = get_collider_list(grid, layer)
	if collider_list.size() > 0:
		return true
	else:
		return false

## 检查某格是否有在 BLOCKMOVEMENT 层的碰撞
func check_blockmovement(grid:Vector2i)->bool:
	return check_collision(grid, GlobalValue.PhysicsLayer.BLOCK_MOVEMENT)

func load_or_generate_level(level_count:int):
	pass
