extends Node2D
## 所有游戏中地图上活动物体的抽象基类
class_name Entity

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var area_2d: Area2D = $Area2D

var component_list : Array[Component] = []

func initialize():
	for child in get_children():
		if child is Component:
			var component = child as Component
			component.initialize()
			component_list.append(component)

func update():
	for component in component_list:
		component.update()

func try_execute(method_name : String, args : Array):
	if self.has_method(method_name):
		callv(method_name, args)
		return
	for component in component_list:
		if component.has_method(method_name):
			component.callv(method_name, args)
			return
