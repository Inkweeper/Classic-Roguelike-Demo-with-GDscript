extends RefCounted

class_name Action

enum Type {
	MOVE,
	RELEASE_SKILL,
	USE_ITEM,
	EQUIP_ITEM,
}

var executer : Entity
var type : Type
var args : Array

static func new_action(executer:Entity, type:Type, args:Array)->Action:
	var action : Action = Action.new()
	action.executer = executer
	action.type = type
	# 根据type检查args是否合格
	match type:
		Action.Type.MOVE:
			if args.size() != 1 or args[0] is not Vector2i:
				push_error("invalid movement action!")
	action.args = args
	return action
