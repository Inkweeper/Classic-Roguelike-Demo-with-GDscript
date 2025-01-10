extends Component
class_name BehaviorTreeRoot

var behavior_tree_node_children : Array[BehaviorTreeNode] = []
var black_board : Dictionary = {}

func initialize():
	for child in get_children():
		if child is BehaviorTreeNode:
			child.initialize()
			behavior_tree_node_children.append(child)
	pass

# 默认不考虑子节点返回值, 仅执行. 可覆写
func behave():
	for behavior in behavior_tree_node_children:
		behavior.behave()
