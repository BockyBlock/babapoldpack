table.insert(objlistdata.alltags, "poldpack")

table.insert(editor_objlist_order, "text_bounce")
editor_objlist["text_bounce"] = 
{
		name = "text_bounce",
		unittype = "text",
		tags = {"abstract","text_quality","poldpack","water"},
		tiling = -1,
		type = 2,
		layer = 18,
		colour = {3, 2},
		colour_active = {3, 3},
		sprite_in_root = false,
	}

table.insert(editor_objlist_order, "text_splat")
editor_objlist["text_splat"] = 
{
		name = "text_splat",
		unittype = "text",
		tags = {"forest","town","text_quality","poldpack","cave"},
		tiling = -1,
		type = 2,
		layer = 18,
		colour = {6, 3},
		colour_active = {6, 0},
		sprite_in_root = false,
	}

table.insert(editor_objlist_order, "text_crumble")
editor_objlist["text_crumble"] = 
{
		name = "text_crumble",
		unittype = "text",
		tags = {"forest","town","text_quality","poldpack","autumn","floor"},
		tiling = -1,
		type = 2,
		layer = 18,
		colour = {3, 0},
		colour_active = {3, 1},
		sprite_in_root = false,
	}

table.insert(editor_objlist_order, "text_nope")
editor_objlist["text_nope"] = 
{
		name = "text_nope",
		unittype = "text",
		tags = {"common","text_quality","poldpack","abstract","mountain","text_special"},
		tiling = -1,
		type = 2,
		layer = 18,
		colour = {2, 2},
		colour_active = {2, 1},
		sprite_in_root = false,
	}

table.insert(editor_objlist_order, "text_wasd")
editor_objlist["text_wasd"] = 
{
		name = "text_wasd",
		unittype = "text",
		tags = {"common","text_quality","poldpack","movement","abstract","spooky","text_special"},
		tiling = -1,
		type = 2,
		layer = 18,
		colour = {4, 0},
		colour_active = {4, 1},
		sprite_in_root = false,
	}

table.insert(editor_objlist_order, "text_solid")
editor_objlist["text_solid"] = 
{
		name = "text_solid",
		unittype = "text",
		tags = {"common","text_prefix","text_condition","poldpack"},
		tiling = -1,
		type = 3,
		layer = 18,
		colour = {5, 2},
		colour_active = {5, 3},
		sprite_in_root = false,
	}

table.insert(editor_objlist_order, "text_delicate")
editor_objlist["text_delicate"] = 
{
		name = "text_delicate",
		unittype = "text",
		tags = {"common","text_prefix","text_condition","poldpack","autumn"},
		tiling = -1,
		type = 3,
		layer = 18,
		colour = {2, 2},
		colour_active = {2, 3},
		sprite_in_root = false,
	}
	
	table.insert(editor_objlist_order, "text_powers")
editor_objlist["text_powers"]  = {
		name = "text_powers",
		unittype = "text",
		tags = {"text_verb","machine","poldpack"},
		tiling = -1,
		type = 1,
		layer = 20,
		sprite_in_root = false,
		colour = {6, 1},
		colour_active = {2, 4}
	}
	
	table.insert(editor_objlist_order, "text_powers2")
editor_objlist["text_powers2"]  = {
		name = "text_powers2",
		unittype = "text",
		tags = {"text_verb","machine","poldpack"},
		tiling = -1,
		type = 1,
		layer = 20,
		sprite_in_root = false,
		colour = {5, 2},
		colour_active = {5, 3}
	}
	
	table.insert(editor_objlist_order, "text_powers3")
editor_objlist["text_powers3"]  = {
		name = "text_powers3",
		unittype = "text",
		tags = {"text_verb","machine","poldpack"},
		tiling = -1,
		type = 1,
		layer = 20,
		sprite_in_root = false,
		colour = {3, 2},
		colour_active = {4, 4},
	}
	
table.insert(editor_objlist_order, "text_kata")
editor_objlist["text_kata"] = 
{
		name = "text_kata",
		unittype = "text",
		tags = {"abstract","text_quality","poldpack","movement","sky","text_special"},
		tiling = -1,
		type = 2,
		layer = 18,
		colour = {1, 3},
		colour_active = {1, 4},
		sprite_in_root = false,
	}

table.insert(editor_objlist[editor_objlist_reference["text_facing"]].argextra, "kata")
	
	table.insert(editor_objlist_order, "text_powering")
editor_objlist["text_powering"]  = {
		name = "text_powering",
		unittype = "text",
		tags = {"text_condition","machine","poldpack"},
		tiling = -1,
		type = 7,
		layer = 20,
		sprite_in_root = false,
		colour = {6, 1},
		colour_active = {2, 4}
	}

formatobjlist()