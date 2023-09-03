condlist["solid"] = function(params,checkedconds,checkedconds_,cdata)
			local unit = mmf.newObject(cdata.unitid)
			local name = unit.strings[UNITNAME]
			if name:sub(1,#"text_") == "text_" then
			name = "text"
			end
			unit.solidcond = false
			local canstopyou = hasfeature(name,"is","stop",unit.fixed) or hasfeature(name,"is","push",unit.fixed) or hasfeature(name,"is","pull",unit.fixed)
			local isweak = hasfeature(name,"is","weak",unit.fixed)
			
			if (isweak == nil) and (canstopyou ~= nil) then
				unit.solidcond = true
			end
    return (unit.solidcond),checkedconds
end

condlist["delicate"] = function(params,checkedconds,checkedconds_,cdata)
			local unit = mmf.newObject(cdata.unitid)
			local name = unit.strings[UNITNAME]
			if name:sub(1,#"text_") == "text_" then
			name = "text"
			end
			unit.nervouscond = false
			local issafe = hasfeature(name,"is","safe",unit.fixed)
			if ((findfeature(nil, "is", "open") ~= nil) and hasfeature(name,"is","shut",unit.fixed)) then
				unit.nervouscond = true
			end
			if ((findfeature(nil, "is", "shut") ~= nil) and hasfeature(name,"is","open",unit.fixed)) then
				unit.nervouscond = true
			end
			
			if (hasfeature(name,"is","boom",unit.fixed) or hasfeature(name,"is","sink",unit.fixed)) then
				unit.nervouscond = true
			end
			if (issafe ~= nil) then
				unit.nervouscond = false
			end
    return (unit.nervouscond),checkedconds
end

condlist["powered"] = function(params,checkedconds,checkedconds_,cdata)
			local unit = mmf.newObject(cdata.unitid)
			local name = unit.strings[UNITNAME]
			if name:sub(1,#"text_") == "text_" then
			name = "text"
			end

			local found = false
			local x,y,limit,subtype,conds = cdata.x,cdata.y,cdata.limit,cdata.subtype,tostring(cdata.conds)
			local fullname = "power" .. subtype
			local fullverb = "powers" .. subtype
			
			if (poweredstatus[fullname] ~= nil) then
				found = poweredstatus[fullname]
				-- MF_alert("Old solution: " .. tostring(found) .. " " .. fullname)
			elseif (featureindex[fullname] ~= nil) then
				for c,d in ipairs(featureindex[fullname]) do
					local drule = d[1]
					local dconds = d[2]
					
					if (checkedconds[tostring(dconds)] == nil) then
						if ((string.sub(drule[1], 1, 4) ~= "not ") and (drule[2] == "is") and (drule[3] == fullname)) then
							if (drule[1] ~= "empty") and (drule[1] ~= "level") then
								if (unitlists[drule[1]] ~= nil) then
									checkedconds[tostring(dconds)] = 1
									
									for e,f in ipairs(unitlists[drule[1]]) do
										if testcond(dconds,f,x,y,nil,limit,checkedconds) then
											found = true
											break
										end
									end
								end
							elseif (drule[1] == "empty") then
								local empties = findempty(dconds,true)
								
								if (#empties > 0) then
									found = true
								end
							elseif (drule[1] == "level") and testcond(dconds,1,x,y,nil,limit,checkedconds) then
								found = true
							end
						end
					end
					
					if found then
						break
					end
				end
			end
			if (featureindex[fullverb] ~= nil) then
				for c,d in ipairs(featureindex[fullverb]) do
					local drule = d[1]
					local dconds = d[2]
					
					if (checkedconds[tostring(dconds)] == nil) then
						if ((string.sub(drule[1], 1, 4) ~= "not ") and (drule[2] == fullverb) and (drule[3] == name)) then
							if (drule[1] ~= "empty") and (drule[1] ~= "level") then
								if (unitlists[drule[1]] ~= nil) then
									checkedconds[tostring(dconds)] = 1
									
									for e,f in ipairs(unitlists[drule[1]]) do
										if testcond(dconds,f,x,y,nil,limit,checkedconds) then
											found = true
											break
										end
									end
								end
							elseif (drule[1] == "empty") then
								local empties = findempty(dconds,true)
								
								if (#empties > 0) then
									found = true
								end
							elseif (drule[1] == "level") and testcond(dconds,1,x,y,nil,limit,checkedconds) then
								found = true
							end
						end
					end
					
					if found then
						break
					end
				end
				
				-- MF_alert("New solution: " .. tostring(found) .. " " .. fullname)
			end
			
			checkedconds = checkedconds_ or {[tostring(conds)] = 1}
			
			if (checkedconds_ == nil) and (poweredstatus[fullname] == nil) then
				-- MF_alert("Status set: " .. tostring(found) .. " " .. fullname)
				poweredstatus[fullname] = found
			end
			
			return found,checkedconds,true
end

condlist["powering"] = function(params,checkedconds,checkedconds_,cdata)
			local allfound = 0
			local alreadyfound = {}
			local name,unitid,x,y,limit,subtype = cdata.name,cdata.unitid,cdata.x,cdata.y,cdata.limit,cdata.subtype
			
			if (#params > 0) then
				for a,b in ipairs(params) do
					local pname = b
					local pnot = false
					if (string.sub(b, 1, 4) == "not ") then
						pnot = true
						pname = string.sub(b, 5)
					end
					
					local bcode = b .. "_" .. tostring(a)
					
					if (featureindex[name] ~= nil) then
						for c,d in ipairs(featureindex[name]) do
							local drule = d[1]
							local dconds = d[2]
							
							if (checkedconds[tostring(dconds)] == nil) then
								if (pnot == false) then
									if ((drule[1] == name) and (drule[2] == "powers" .. subtype) and (drule[3] == b)) or ((drule[1] == name) and (drule[2] == "is") and (drule[3] == "power" .. subtype)) then
										checkedconds[tostring(dconds)] = 1
										
										if (alreadyfound[bcode] == nil) and testcond(dconds,unitid,x,y,nil,limit,checkedconds) then
											alreadyfound[bcode] = 1
											allfound = allfound + 1
											break
										end
									end
								else
									if (string.sub(drule[3], 1, 4) ~= "not ") then
										local obj = unitreference["text_" .. drule[3]]
										
										if (obj ~= nil) then
											local objtype = getactualdata_objlist(obj,"type")
											
											if (objtype == 2) then
												if ((drule[1] == name) and (drule[2] == "powers" .. subtype) and (drule[3] ~= pname)) or ((drule[1] == name) and (drule[2] == "is") and (drule[3] ~= "power" .. subtype)) then
													checkedconds[tostring(dconds)] = 1
													
													if (alreadyfound[bcode] == nil) and testcond(dconds,unitid,x,y,nil,limit,checkedconds) then
														alreadyfound[bcode] = 1
														allfound = allfound + 1
														break
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			else
				return false,checkedconds,true
			end
			
			--MF_alert(tostring(cdata.debugname) .. ", " .. tostring(allfound) .. ", " .. tostring(#params))
			
			return (allfound == #params),checkedconds,true
		end