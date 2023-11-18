class_name AppUndoRedo extends Object

var ur := UndoRedo.new()

func add_do_method(callable: Callable):
	ur.add_do_method(callable)
	
func add_do_property(object: Object, property: StringName, value: Variant):
	ur.add_do_property(object, property, value)
	
func add_do_reference(object: Object):
	ur.add_do_reference(object)
	
func add_undo_method(callable: Callable):
	ur.add_undo_method(callable)

func add_undo_property(object: Object, property: StringName, value: Variant):
	ur.add_undo_property(object, property, value)
	
func clear_history(increase_version: bool = true):
	ur.clear_history(increase_version)
	
func commit_action(execute: bool = true):
	ur.commit_action(execute)
	
func create_action(name: String, merge_mode: UndoRedo.MergeMode = 0, backward_undo_ops: bool = false):
	ur.create_action(name, merge_mode, backward_undo_ops)

func end_force_keep_in_merge_ends():
	ur.end_force_keep_in_merge_ends()
	
func get_action_name(id: int) -> String:
	return ur.get_action_name(id)
	
func get_current_action() -> int :
	return ur.get_current_action()
	
func get_history_count() -> int:
	return ur.get_history_count()
	
func get_version() -> int:
	return ur.get_version()
	
func has_redo() -> bool:
	return ur.has_redo()
	
func has_undo() -> bool:
	return ur.has_undo()
	
func is_committing_action() -> bool:
	return ur.is_committing_action()
	
func redo() -> bool:
	return ur.redo()
	
func start_force_keep_in_merge_ends():
	ur.start_force_keep_in_merge_ends()
	
func undo() -> bool:
	return ur.undo()
