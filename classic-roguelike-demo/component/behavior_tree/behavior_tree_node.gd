extends Component
class_name BehaviorTreeNode

var behavior_tree_root : BehaviorTreeRoot
var behavior_tree_node_children : Array[BehaviorTreeNode] = []


enum BehaviorResult {
	SUCCESS,
	FAILURE,
	RUNNING,
}

func initialize():
	var parent : Node = get_parent()
	if parent is BehaviorTreeRoot:
		behavior_tree_root = parent
	elif parent is BehaviorTreeNode:
		behavior_tree_root = parent.behavior_tree_root
	else:
		push_error("Invalid behavior tree structure")
	
	for child in get_children():
		if child is BehaviorTreeNode:
			child.initialize()
			behavior_tree_node_children.append(child)

func behave()->BehaviorResult:
	push_error("Empty BehaviorTreeNode object behaving")
	return BehaviorResult.FAILURE
