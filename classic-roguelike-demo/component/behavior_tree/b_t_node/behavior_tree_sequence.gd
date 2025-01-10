extends BehaviorTreeNode
class_name BehaviorTreeSequence

func behave()->BehaviorResult:
	for behavior in behavior_tree_node_children:
		match behavior.behave():
			BehaviorResult.SUCCESS:
				continue
			BehaviorResult.RUNNING:
				return BehaviorResult.RUNNING
			BehaviorResult.FAILURE:
				return BehaviorResult.FAILURE
	return BehaviorResult.SUCCESS
