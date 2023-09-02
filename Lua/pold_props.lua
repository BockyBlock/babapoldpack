table.insert(mod_hook_functions["rule_update_after"],
	function()
			if (featureindex["nope"] ~= nil) then
				destroylevel("empty")
			end
	end
)