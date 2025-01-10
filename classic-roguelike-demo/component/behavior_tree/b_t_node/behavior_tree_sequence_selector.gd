extends BehaviorTreeNode
class_name BehaviorTreeSequenceSelector

func behave()->BehaviorResult:
	for behavior in behavior_tree_node_children:
		match behavior.behave():
			BehaviorResult.SUCCESS:
				return BehaviorResult.SUCCESS
			BehaviorResult.RUNNING:
				return BehaviorResult.RUNNING
			BehaviorResult.FAILURE:
				continue
	return BehaviorResult.FAILURE
