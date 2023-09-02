table.insert(objlistdata.alltags, "particlels")

table.insert(editor_objlist_order, "text_navy")
table.insert(editor_objlist_order, "text_maroon")
table.insert(editor_objlist_order, "text_gold")
table.insert(editor_objlist_order, "text_blurple")
table.insert(editor_objlist_order, "text_worst")
table.insert(editor_objlist_order, "text_bleeding")
table.insert(editor_objlist_order, "text_cerulean")
table.insert(editor_objlist_order, "text_dance")


editor_objlist["text_navy"] = 
{
	name = "text_navy",
	unittype = "text",
	sprite_in_root = false,
	tags = {"text_quality","abstract","text", "colour", "particlels"},
	tiling = -1,
	type = 2,
	layer = 18,
	colour = {1, 0},
	colour_active = {1, 1},
}

editor_objlist["text_maroon"] = 
{
	name = "text_maroon",
	unittype = "text",
	sprite_in_root = false,
	tags = {"text_quality","abstract","text", "colour", "particlels"},
	tiling = -1,
	type = 2,
	layer = 18,
	colour = {2, 0},
	colour_active = {2, 1},
}

editor_objlist["text_blurple"] = 
{
	name = "text_blurple",
	unittype = "text",
	sprite_in_root = false,
	tags = {"text_quality","abstract","text", "colour", "particlels"},
	tiling = -1,
	type = 2,
	layer = 18,
	colour = {3, 2},
	colour_active = {3, 3},
}

editor_objlist["text_worst"] = 
{
	name = "text_worst",
	unittype = "text",
	sprite_in_root = false,
	tags = {"text_quality","abstract","text", "particlels"},
	tiling = -1,
	type = 2,
	layer = 18,
	colour = {1, 0},
	colour_active = {1, 1},
}

editor_objlist["text_gold"] = 
{
	name = "text_gold",
	unittype = "text",
	sprite_in_root = false,
	tags = {"text_quality","abstract","text", "colour", "particlels"},
	tiling = -1,
	type = 2,
	layer = 18,
	colour = {6, 1},
	colour_active = {6, 2},
}

editor_objlist["text_bleeding"] = 
{
	name = "text_bleeding",
	unittype = "text",
	sprite_in_root = false,
	tags = {"text_quality","abstract","text", "town", "spooky", "particlels"},
	tiling = -1,
	type = 2,
	layer = 18,
	colour = {2, 0},
	colour_active = {2, 1},
}

editor_objlist["text_cerulean"] = 
{
	name = "text_cerulean",
	unittype = "text",
	sprite_in_root = false,
	tags = {"text_quality","abstract","text", "colour", "particlels"},
	tiling = -1,
	type = 2,
	layer = 18,
	colour = {4, 3},
	colour_active = {4, 4},
}

editor_objlist["text_dance"] = 
{
	name = "text_dance",
	unittype = "text",
	sprite_in_root = false,
	tags = {"text_quality","abstract","text","town", "particlels"},
	tiling = -1,
	type = 2,
	layer = 18,
	colour = {6, 1},
	colour_active = {6, 2},
}

	
table.insert(editor_objlist_order, "text_splash")
editor_objlist["text_splash"] = 
{
		name = "text_splash",
		unittype = "text",
		tags = {"common","text_quality","particlels","water"},
		tiling = -1,
		type = 2,
		layer = 18,
		colour = {1, 1},
		colour_active = {1, 2},
		sprite_in_root = false,
	}

	table.insert(editor_objlist_order, "text_mlelt")
editor_objlist["text_mlelt"] = 
{
		name = "text_mlelt",
		unittype = "text",
		tags = {"common","text_quality","poldpack","abstract"},
		tiling = -1,
		type = 2,
		layer = 18,
		colour = {1, 1},
		colour_active = {1, 2},
		sprite = "text_melt",
		sprite_in_root = true,
	}

formatobjlist()