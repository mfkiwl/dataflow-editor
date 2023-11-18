extends Object

var schema_path: String
var schema: Dictionary
var type_ids: Dictionary

signal schema_changed()

func _init():
	pass
	
func set_schema_file(new_schema: String):
	if schema_path == new_schema:
		reload_schema_file()
	else:
		schema_path = new_schema
	
	
func reload_schema_file():
	pass
	
func type_string_to_id(type: String) -> int:
	return 0
	
func node_list() -> Array:
	return Array()
