extends MapGenerationRule
## 生成一个经典的PathosLike九宫格地图~
class_name NineRectDungeonGenerationRule

const MAX_ROOM_EDGE : int = 10
const MIN_ROOM_EDGE : int = 5
const LEVEL_SIZE : Vector2i = Vector2i(36+6,36+6)

var room_cell_list : Array[Vector2i] = []

func generate_map():
	fullfill_with_walls()
	dig_nine_rect_rooms_and_z_connect()
	spawn_enemy()

func spawn_enemy():
	pass


func fullfill_with_walls():
	var all_cells:Array[Vector2i]
	
	for j in range(0,LEVEL_SIZE.y):
		for i in range(0,LEVEL_SIZE.x):
			all_cells.append(Vector2i(i,j))
	
	world.floor.set_cells_terrain_connect(
		all_cells,
		GlobalValue.TerrainSet.DEFAULT,
		GlobalValue.LevelTerrian.WALL,
	)

func dig_nine_rect_rooms_and_z_connect():
	var room_list : Array[Rect2i]
	room_list.resize(9)
	
	# 房间生成
	for j in range(0,3):
		for i in range(0,3):
			# 确认本房间边界
			var x_low = i * (LEVEL_SIZE.x + 3)/3
			var x_high = x_low + (LEVEL_SIZE.x - 6)/3 - 1
			var y_low = j * (LEVEL_SIZE.y + 3)/3
			var y_high = y_low + (LEVEL_SIZE.y - 6)/3 - 1
			# 随机生成一个大小的房间
			var room_size_x : int = randi_range(
				MIN_ROOM_EDGE,
				MAX_ROOM_EDGE,
			)
			var room_size_y : int = randi_range(
				MIN_ROOM_EDGE,
				MAX_ROOM_EDGE,
			)
			# 计算房间合法位置: 四个方向不触及边界
			var room_pos_x:int = randi_range(
				x_low + 1,
				x_high - room_size_x
			)
			var room_pos_y:int = randi_range(
				y_low + 1,
				y_high - room_size_y
			)
			# Rect2i(pos.x, pos.y, width, height)
			var room = Rect2i(
				room_pos_x,
				room_pos_y,
				room_size_x,
				room_size_y,
			)
			room_list[j*3+i] = room
	
	print(room_list)
	
	# 房间挖掘
	for room in room_list:
		for y in range(room.position.y, room.position.y + room.size.y):
			for x in range(room.position.x, room.position.x + room.size.x):
				world.floor.set_cells_terrain_connect(
					[Vector2i(x,y)],
					GlobalValue.TerrainSet.DEFAULT,
					GlobalValue.LevelTerrian.FLOOR,
				)
				room_cell_list.append(Vector2i(x,y))
	
	place_stairs(room_list)
	
	# z字连接
	# 横向
	for x in [0,1]:
		for y in [0,1,2]:
			var corridor_list : Array[Vector2i]
			# 从左向右
			var start_room = room_list[y*3+x]
			var end_room = room_list[y*3+x+1]
			var start_cell : Vector2i
			var end_cell : Vector2i
			start_cell.x = start_room.position.x + start_room.size.x
			start_cell.y = randi_range(
				start_room.position.y,
				start_room.position.y + start_room.size.y - 1,
			)
			end_cell.x = end_room.position.x - 1
			end_cell.y = randi_range(
				end_room.position.y,
				end_room.position.y + end_room.size.y - 1,
			)
			# TODO: 可以对start_cell和end_cell执行装门操作
			# 在start_cell和end_cell中间随机一列进行拐弯
			var twist_x : int =  randi_range(start_cell.x+1, end_cell.x-1)
			for i in range(start_cell.x, twist_x+1):
				corridor_list.append(Vector2i(i,start_cell.y))
			var low : int = min(start_cell.y,end_cell.y)
			var high : int = max(start_cell.y,end_cell.y)
			for i in range(low, high+1):
				corridor_list.append(Vector2i(twist_x, i))
			for i in range(twist_x, end_cell.x + 1):
				corridor_list.append(Vector2i(i, end_cell.y))
			for cell in corridor_list:
				world.floor.set_cells_terrain_connect(
					[cell],
					GlobalValue.TerrainSet.DEFAULT,
					GlobalValue.LevelTerrian.FLOOR,
				)
	# 纵向
	for x in [0,1,2]:
		for y in [0,1]:
			var corridor_list : Array[Vector2i]
			# 从上向下
			var start_room = room_list[y*3+x]
			var end_room = room_list[y*3+x+3]
			var start_cell : Vector2i
			var end_cell : Vector2i
			start_cell.y = start_room.position.y + start_room.size.y
			start_cell.x = randi_range(
				start_room.position.x,
				start_room.position.x + start_room.size.x - 1,
			)
			end_cell.y = end_room.position.y - 1
			end_cell.x = randi_range(
				end_room.position.x,
				end_room.position.x + end_room.size.x - 1,
			)
			# TODO: 可以对start_cell和end_cell执行装门操作
			# 在start_cell和end_cell中间随机一列进行拐弯
			var twist_y : int =  randi_range(start_cell.y+1, end_cell.y-1)
			for i in range(start_cell.y, twist_y+1):
				corridor_list.append(Vector2i(start_cell.x, i))
			var low : int = min(start_cell.x,end_cell.x)
			var high : int = max(start_cell.x,end_cell.x)
			for i in range(low, high+1):
				corridor_list.append(Vector2i(i, twist_y))
			for i in range(twist_y, end_cell.y + 1):
				corridor_list.append(Vector2i(end_cell.x, i))
			for cell in corridor_list:
				world.floor.set_cells_terrain_connect(
					[cell],
					GlobalValue.TerrainSet.DEFAULT,
					GlobalValue.LevelTerrian.FLOOR,
				)
	
func place_stairs(room_list:Array[Rect2i]):
	# 楼梯放置
	const DOWN_STAIR = preload("res://entity/facility/portal/stair/down_stair.tscn")
	const UP_STAIR = preload("res://entity/facility/portal/stair/up_stair.tscn")
	
	var down_stair = DOWN_STAIR.instantiate()
	down_stair.from_level = level_count
	down_stair.to_level = level_count + 1
	
	var up_stair = UP_STAIR.instantiate()
	up_stair.from_level = level_count
	up_stair.to_level = level_count - 1
	
	var room_list_copy : Array[Rect2i] = room_list.duplicate()
	# 上楼楼梯
	var room_to_place_stair : Rect2i = room_list_copy.pop_at(randi_range(0, room_list_copy.size()-1))
	var place_grid :Vector2i = Vector2i(
		randi_range(0, room_to_place_stair.size.x -1),
		randi_range(0, room_to_place_stair.size.y -1)
	) + room_to_place_stair.position
	var place_pos : Vector2 = world.floor.map_to_local(place_grid)
	world.facility_layer.add_child(up_stair)
	up_stair.position = place_pos
	# 下楼楼梯
	room_to_place_stair = room_list_copy.pop_at(randi_range(0, room_list_copy.size()-1))
	place_grid = Vector2i(
		randi_range(0, room_to_place_stair.size.x -1),
		randi_range(0, room_to_place_stair.size.y -1)
	) + room_to_place_stair.position
	place_pos = world.floor.map_to_local(place_grid)
	world.facility_layer.add_child(down_stair)
	down_stair.position = place_pos
